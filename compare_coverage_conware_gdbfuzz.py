#!/usr/bin/env python3
"""
Compare basic-block coverage between conware (angr emulation) and gdbfuzz
(real HW, sampled over many fuzzing runs).

Conware's coverage report labels every static basic block it knows about as
either "Match" (hit at runtime -> covered) or "Missed" (known statically but
never executed). Conware addresses are consistently offset by +1 relative to
gdbfuzz/real-HW addresses (see --offset); the reason for the offset is not
established, but the shift itself is consistent.

gdbfuzz coverage is spread across many trial folders, each containing a
'plot_data' file that lists every basic block address hit during that one
run (see count_executions.py). "Covered by gdbfuzz" == union of addresses
found across every plot_data file under the given folder.

Optionally, an --interactive folder (gdbfuzz coverage gathered while
interacting with the HW, e.g. pressing a button) can be compared against
--gdbfuzz as a baseline, to show which blocks were only reached thanks to
the interaction.

Optionally, --elf points at the firmware ELF gdbfuzz actually analyzed
(unstripped, so it has a FUNC symbol table). When given, block-level
coverage is additionally rolled up to function-level coverage, and every
"only gdbfuzz" block is classified as either a block/path-level miss
(conware covers some other block in the same function) or a genuine
function-level gap (conware never covers that function at all). Verify
the ELF matches by checking that a heavily-exercised function's address
(e.g. digitalRead, pinMode) actually appears as a node in gdbfuzz's own
'cfg' file -- a stale rebuild will parse fine but silently misattribute.

Usage:
    python3 compare_coverage_conware_gdbfuzz.py \\
        --conware basic_block_compare_button.txt \\
        --gdbfuzz output_button_no_interaction \\
        [--interactive output_button_interactive] \\
        [--elf button.ino.elf] \\
        [--offset 1] [--plot-data-name plot_data] [--log compare_coverage.log]
"""
import argparse
import bisect
import logging
import re
import subprocess
from pathlib import Path

CONWARE_LINE_RE = re.compile(r'^(Match|Missed):\s*<Block for (0x[0-9a-fA-F]+), (\d+) bytes>')
GDBFUZZ_LINE_RE = re.compile(r'^\d+\s+(0x[0-9a-fA-F]+)\s*$')


def parse_conware_coverage(path):
    """Parse a conware basic-block coverage report.

    Returns (matched, missed): dicts of {address: size_in_bytes}, addresses
    still in conware's own (offset) address space.
    """
    matched, missed = {}, {}
    with open(path) as f:
        for line in f:
            m = CONWARE_LINE_RE.match(line)
            if not m:
                continue
            status, addr, size = m.group(1), int(m.group(2), 16), int(m.group(3))
            (matched if status == 'Match' else missed)[addr] = size
    return matched, missed


def count_block_executions(folder, plot_data_name='plot_data'):
    """For each address, count in how many distinct gdbfuzz runs (plot_data
    files under `folder`) it was covered at least once. Mirrors the metric
    used by count_executions.py.

    Returns ({address: run_count}, num_files_scanned).
    """
    counts = {}
    files = sorted(f for f in Path(folder).rglob(plot_data_name) if f.is_file())
    for file in files:
        with open(file) as f:
            for line in f:
                m = GDBFUZZ_LINE_RE.match(line)
                if m:
                    addr = int(m.group(1), 16)
                    counts[addr] = counts.get(addr, 0) + 1
    return counts, len(files)


def normalize_conware(addr_dict, offset):
    """Shift conware addresses down into gdbfuzz/real-HW address space."""
    return {addr - offset: val for addr, val in addr_dict.items()}


def parse_elf_functions(elf_path):
    """Return a sorted list of (start_addr, size, name) for every defined,
    non-zero-size FUNC symbol in the ELF, via `readelf -sW`. The Thumb LSB
    tag (if set) is stripped so lookups line up with raw instruction
    addresses."""
    out = subprocess.run(['readelf', '-sW', str(elf_path)],
                          capture_output=True, text=True, check=True).stdout
    funcs = []
    for line in out.splitlines():
        toks = line.split()
        if len(toks) < 8 or toks[3] != 'FUNC':
            continue
        addr = int(toks[1], 16) & ~1
        size = int(toks[2])
        name = toks[7]
        if size == 0:
            continue  # zero-size symbols (aliases/markers) can't anchor a range
        funcs.append((addr, size, name))
    funcs.sort()
    return funcs


def make_addr_to_func(funcs):
    starts = [f[0] for f in funcs]

    def addr_to_func(addr):
        idx = bisect.bisect_right(starts, addr) - 1
        if idx < 0:
            return None
        start, size, name = funcs[idx]
        return name if addr < start + size else None

    return addr_to_func


def fmt_addrs(addrs):
    return ', '.join(hex(a) for a in sorted(addrs)) if addrs else '(none)'


def pct(n, total):
    return (n / total * 100) if total else 0.0


def main():
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--conware', required=True,
                         help='conware basic-block coverage report (e.g. basic_block_compare_button.txt)')
    parser.add_argument('--gdbfuzz', required=True,
                         help='folder of gdbfuzz coverage output, searched recursively for plot_data files')
    parser.add_argument('--interactive',
                         help='optional: folder of gdbfuzz coverage gathered WITH HW interaction, '
                              'compared against --gdbfuzz as the baseline')
    parser.add_argument('--elf',
                         help='optional: firmware ELF gdbfuzz analyzed (unstripped), to additionally '
                              'roll block coverage up to function-level coverage')
    parser.add_argument('--offset', type=int, default=1,
                         help='conware_addr = real_addr + offset (default: 1)')
    parser.add_argument('--plot-data-name', default='plot_data',
                         help="filename to search for under the gdbfuzz folder(s) (default: 'plot_data')")
    parser.add_argument('--log', default='compare_coverage.log',
                         help='path to write detailed results to (default: compare_coverage.log)')
    args = parser.parse_args()

    logger = logging.getLogger('compare_coverage')
    logger.setLevel(logging.DEBUG)
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    console.setFormatter(logging.Formatter('%(message)s'))
    logfile = logging.FileHandler(args.log, mode='w')
    logfile.setLevel(logging.DEBUG)
    logfile.setFormatter(logging.Formatter('%(message)s'))
    logger.addHandler(console)
    logger.addHandler(logfile)

    matched, missed = parse_conware_coverage(args.conware)
    total_conware_blocks = len(matched) + len(missed)
    conware_covered = normalize_conware(matched, args.offset)
    conware_covered_set = set(conware_covered)
    conware_all_set = set(normalize_conware(matched, args.offset)) | set(normalize_conware(missed, args.offset))

    gdbfuzz_counts, num_runs = count_block_executions(args.gdbfuzz, args.plot_data_name)
    gdbfuzz_set = set(gdbfuzz_counts)

    both = conware_covered_set & gdbfuzz_set
    only_gdbfuzz = gdbfuzz_set - conware_covered_set
    only_conware = conware_covered_set - gdbfuzz_set
    is_subset = gdbfuzz_set.issubset(conware_covered_set)

    logger.debug('=== gdbfuzz: blocks executed, by number of runs ===')
    for addr, count in sorted(gdbfuzz_counts.items(), key=lambda kv: (-kv[1], kv[0])):
        logger.debug(f'{hex(addr)}: executed in {count}/{num_runs} run(s)')

    logger.debug('')
    logger.debug('=== conware: covered (Match) blocks, normalized to real-HW addresses ===')
    for addr in sorted(conware_covered_set):
        logger.debug(hex(addr))

    logger.debug('')
    logger.debug(f'=== blocks in both (n={len(both)}) ===')
    logger.debug(fmt_addrs(both))
    logger.debug('')
    logger.debug(f'=== only gdbfuzz (n={len(only_gdbfuzz)}) ===')
    logger.debug(fmt_addrs(only_gdbfuzz))
    logger.debug('')
    logger.debug(f'=== only conware (n={len(only_conware)}) ===')
    logger.debug(fmt_addrs(only_conware))

    logger.info('=== Coverage comparison: conware vs gdbfuzz ===')
    logger.info(f'gdbfuzz runs scanned (plot_data files): {num_runs}')
    logger.info('')
    logger.info(f'coverage conware: {len(conware_covered_set)}/{total_conware_blocks} static blocks '
                f'({pct(len(conware_covered_set), total_conware_blocks):.1f}%)')
    logger.info(f'coverage gdbfuzz: {len(gdbfuzz_set)} unique blocks '
                f'({pct(len(gdbfuzz_set), total_conware_blocks):.1f}% of conware\'s {total_conware_blocks} static blocks)')
    logger.info('')
    logger.info(f'blocks covered by both:   {len(both)}')
    logger.info(f'blocks only in gdbfuzz:   {len(only_gdbfuzz)}')
    logger.info(f'blocks only in conware:   {len(only_conware)}')
    logger.info('')
    logger.info(f'is gdbfuzz a true subset of conware coverage? {"YES" if is_subset else "NO"}')
    if not is_subset:
        logger.info(f'  -> gdbfuzz-only blocks not covered by conware: {fmt_addrs(only_gdbfuzz)}')
    logger.info('')
    logger.info(f'(full per-block breakdown written to {args.log})')

    if args.elf:
        funcs = parse_elf_functions(args.elf)
        addr_to_func = make_addr_to_func(funcs)

        def attribute(addrs):
            by_func, unmapped = {}, set()
            for addr in addrs:
                fn = addr_to_func(addr)
                (unmapped.add(addr) if fn is None else by_func.setdefault(fn, set()).add(addr))
            return by_func, unmapped

        conware_by_func, conware_unmapped = attribute(conware_covered_set)
        gdbfuzz_by_func, gdbfuzz_unmapped = attribute(gdbfuzz_set)
        conware_funcs = set(conware_by_func)
        gdbfuzz_funcs = set(gdbfuzz_by_func)
        func_both = conware_funcs & gdbfuzz_funcs
        func_only_gdbfuzz = gdbfuzz_funcs - conware_funcs
        func_only_conware = conware_funcs - gdbfuzz_funcs

        # for each only-gdbfuzz BLOCK: does conware cover its function via
        # some other block (path-level miss), or never at all (function gap)?
        only_gdbfuzz_by_func, only_gdbfuzz_unmapped = attribute(only_gdbfuzz)
        partially_missed_funcs = {fn for fn in only_gdbfuzz_by_func if fn in conware_funcs}
        fully_missed_funcs = {fn for fn in only_gdbfuzz_by_func if fn not in conware_funcs}
        blocks_in_partially_missed = sum(len(only_gdbfuzz_by_func[fn]) for fn in partially_missed_funcs)
        blocks_in_fully_missed = sum(len(only_gdbfuzz_by_func[fn]) for fn in fully_missed_funcs)

        logger.debug('')
        logger.debug(f'=== conware covered, by function (n={len(conware_covered_set)} blocks, '
                     f'{len(conware_funcs)} functions, {len(conware_unmapped)} unmapped) ===')
        for fn, addrs in sorted(conware_by_func.items()):
            logger.debug(f'{fn}: {fmt_addrs(addrs)}')
        logger.debug('')
        logger.debug(f'=== gdbfuzz covered, by function (n={len(gdbfuzz_set)} blocks, '
                     f'{len(gdbfuzz_funcs)} functions, {len(gdbfuzz_unmapped)} unmapped) ===')
        for fn, addrs in sorted(gdbfuzz_by_func.items()):
            logger.debug(f'{fn}: {fmt_addrs(addrs)}')

        logger.info('')
        logger.info('=== Function-level coverage: conware vs gdbfuzz ===')
        logger.info(f'elf: {args.elf}')
        logger.info(f'ELF functions with code: {len(funcs)}')
        logger.info(f'functions covered by conware: {len(conware_funcs)} ({pct(len(conware_funcs), len(funcs)):.1f}%)')
        logger.info(f'functions covered by gdbfuzz: {len(gdbfuzz_funcs)} ({pct(len(gdbfuzz_funcs), len(funcs)):.1f}%)')
        logger.info(f'functions covered by both:    {len(func_both)}')
        logger.info(f'functions only conware:       {len(func_only_conware)}')
        logger.info(f'functions only gdbfuzz:       {len(func_only_gdbfuzz)}')
        logger.info(f'is gdbfuzz function coverage a subset of conware\'s? '
                    f'{"YES" if not func_only_gdbfuzz else "NO"}')
        if func_only_gdbfuzz:
            logger.info(f'  functions only gdbfuzz reaches: {", ".join(sorted(func_only_gdbfuzz))}')
        logger.info('')
        logger.info(f'of the {len(only_gdbfuzz)} gdbfuzz-only blocks:')
        if only_gdbfuzz_unmapped:
            logger.info(f'  {len(only_gdbfuzz_unmapped)} fall outside any known ELF function: '
                        f'{fmt_addrs(only_gdbfuzz_unmapped)}')
        logger.info(f'  {blocks_in_partially_missed} in {len(partially_missed_funcs)} function(s) conware DOES '
                    f'cover elsewhere -- a block/path-level miss only')
        logger.info(f'  {blocks_in_fully_missed} in {len(fully_missed_funcs)} function(s) conware NEVER covers '
                    f'-- a genuine function-level gap')
        if fully_missed_funcs:
            logger.info(f'  function(s) conware never reaches at all: {", ".join(sorted(fully_missed_funcs))}')

    if args.interactive:
        interactive_counts, num_interactive_runs = count_block_executions(args.interactive, args.plot_data_name)
        interactive_set = set(interactive_counts)
        additional = interactive_set - gdbfuzz_set
        missing = gdbfuzz_set - interactive_set

        logger.debug('')
        logger.debug('=== interactive-mode: full block set ===')
        for addr in sorted(interactive_set):
            logger.debug(hex(addr))

        logger.info('')
        logger.info('=== Interactive-mode comparison (interactive vs baseline gdbfuzz) ===')
        logger.info(f'interactive runs scanned: {num_interactive_runs}')
        logger.info(f'blocks additionally covered thanks to interaction: {len(additional)}')
        logger.info(f'  -> {fmt_addrs(additional)}')
        if missing:
            logger.info(f'blocks present in baseline but not seen in interactive run(s): {len(missing)}')
            logger.info(f'  -> {fmt_addrs(missing)}')


if __name__ == '__main__':
    main()