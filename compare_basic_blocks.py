#!/usr/bin/env python3
"""
Compare basic-block *boundaries* found by conware (angr) vs gdbfuzz (Ghidra).

Both tools disassemble the same firmware but can disagree on where a basic
block starts, since they use different underlying frameworks (angr vs
Ghidra). This script quantifies how much their static block lists agree:
how many blocks each tool found, how many addresses match, and how many are
only found by one side.

conware's block list comes from its coverage report (both "Match" and
"Missed" lines count -- this is about static block boundaries, not runtime
coverage). conware addresses are offset by +1 relative to gdbfuzz/real-HW
addresses (see --offset).

gdbfuzz's block list comes from its Ghidra-derived CFG ('cfg' file, an
adjacency list of basic block addresses), which is static per firmware and
therefore identical across all of a firmware's trial runs.

Usage:
    python3 compare_basic_blocks.py \\
        --conware basic_block_compare_button.txt \\
        --gdbfuzz output_button_no_interaction \\
        [--offset 1] [--log compare_basic_blocks.log]

--gdbfuzz may point directly at a gdbfuzz 'cfg' file, or at any gdbfuzz
output/trial folder, in which case the first 'cfg' file found underneath it
is used.
"""
import argparse
import bisect
import logging
import re
from pathlib import Path

CONWARE_LINE_RE = re.compile(r'^(Match|Missed):\s*<Block for (0x[0-9a-fA-F]+), (\d+) bytes>')


def parse_conware_blocks(path):
    """Return {address: size_in_bytes} for every static block angr found
    (Match + Missed both count)."""
    blocks = {}
    with open(path) as f:
        for line in f:
            m = CONWARE_LINE_RE.match(line)
            if m:
                blocks[int(m.group(2), 16)] = int(m.group(3))
    return blocks


def find_cfg_file(path):
    p = Path(path)
    if p.is_file():
        return p
    for f in sorted(p.rglob('cfg')):
        if f.is_file():
            return f
    raise FileNotFoundError(f"no 'cfg' file found at or under {path}")


def parse_ghidra_cfg(cfg_path):
    """Parse gdbfuzz's Ghidra-derived CFG (adjacency-list format; first 2
    lines are a header, then one line per block: '<addr> <edge1> <edge2>
    ...'; edges of -0x1/-0x2 are CFG-builder sentinels, not real blocks).

    Returns {address: [successor_addresses]}. An address with an empty
    successor list is a leaf in gdbfuzz's CFG -- gdbfuzz never traced past
    it, most commonly because it's a call into a function gdbfuzz is
    configured to ignore (see BinaryOperations.get_function_addresses in
    gdbfuzz, and 'Ignore function ...' lines in a trial's out.log)."""
    with open(cfg_path) as f:
        lines = f.read().splitlines()
    cfg = {}
    for line in lines[2:]:
        toks = line.split()
        if not toks or not toks[0].startswith('0x'):
            continue
        addr = int(toks[0], 16)
        successors = [int(t, 16) for t in toks[1:] if t.startswith('0x')]
        cfg[addr] = successors
    return cfg


def fmt_addrs(addrs):
    return ', '.join(hex(a) for a in sorted(addrs)) if addrs else '(none)'


def pct(n, total):
    return (n / total * 100) if total else 0.0


def main():
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--conware', required=True,
                         help='conware basic-block report (e.g. basic_block_compare_button.txt)')
    parser.add_argument('--gdbfuzz', required=True,
                         help="gdbfuzz 'cfg' file, or a folder/trial dir under which one can be found")
    parser.add_argument('--offset', type=int, default=1,
                         help='conware_addr = real_addr + offset (default: 1)')
    parser.add_argument('--log', default='compare_basic_blocks.log',
                         help='path to write detailed results to (default: compare_basic_blocks.log)')
    args = parser.parse_args()

    logger = logging.getLogger('compare_basic_blocks')
    logger.setLevel(logging.DEBUG)
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    console.setFormatter(logging.Formatter('%(message)s'))
    logfile = logging.FileHandler(args.log, mode='w')
    logfile.setLevel(logging.DEBUG)
    logfile.setFormatter(logging.Formatter('%(message)s'))
    logger.addHandler(console)
    logger.addHandler(logfile)

    conware_blocks = parse_conware_blocks(args.conware)
    cfg_path = find_cfg_file(args.gdbfuzz)
    ghidra_cfg = parse_ghidra_cfg(cfg_path)
    ghidra_blocks = set(ghidra_cfg)
    ghidra_leaves = {addr for addr, succ in ghidra_cfg.items() if not succ}

    conware_norm = {addr - args.offset: size for addr, size in conware_blocks.items()}
    conware_set = set(conware_norm)

    matched = conware_set & ghidra_blocks
    only_conware = conware_set - ghidra_blocks
    only_ghidra = ghidra_blocks - conware_set
    union = conware_set | ghidra_blocks
    jaccard = pct(len(matched), len(union)) if union else 100.0

    # For each only-conware block, find the nearest matched ghidra block at
    # or before it (its "anchor"). If that anchor is a leaf in gdbfuzz's CFG
    # (no outgoing edges), the only-conware block almost certainly sits
    # *inside* whatever the anchor calls -- gdbfuzz stopped tracing there
    # (typically a call into a function on gdbfuzz's ignore-list, see
    # BinaryOperations.get_function_addresses / 'Ignore function ...' in
    # out.log), while angr kept disassembling into the callee. That is not
    # angr being wrong or incomplete; it is gdbfuzz deliberately not
    # tracking that region. An anchor with real successors instead means the
    # only-conware block is a genuine extra block boundary within code
    # gdbfuzz *did* trace -- a real disagreement worth a closer look.
    ghidra_sorted = sorted(ghidra_blocks)
    behind_ignored_call, unexplained = [], []
    for addr in sorted(only_conware):
        idx = bisect.bisect_right(ghidra_sorted, addr) - 1
        anchor = ghidra_sorted[idx] if idx >= 0 else None
        if anchor is not None and anchor in ghidra_leaves:
            behind_ignored_call.append((addr, anchor))
        else:
            unexplained.append((addr, anchor))

    logger.debug(f'=== conware blocks (angr), normalized to real-HW addresses (offset -{args.offset}) ===')
    for addr, size in sorted(conware_norm.items()):
        logger.debug(f'{hex(addr)}: {size} bytes')

    logger.debug('')
    logger.debug('=== ghidra blocks (gdbfuzz CFG) ===')
    for addr in sorted(ghidra_blocks):
        logger.debug(hex(addr))

    logger.debug('')
    logger.debug(f'=== matched (n={len(matched)}) ===')
    logger.debug(fmt_addrs(matched))
    logger.debug('')
    logger.debug(f'=== only conware (n={len(only_conware)}) ===')
    logger.debug(fmt_addrs(only_conware))
    logger.debug('')
    logger.debug(f'=== only ghidra (n={len(only_ghidra)}) ===')
    logger.debug(fmt_addrs(only_ghidra))

    logger.info('=== Basic block boundary comparison: conware (angr) vs gdbfuzz (Ghidra) ===')
    logger.info(f'cfg source: {cfg_path}')
    logger.info('')
    logger.info(f'conware (angr) blocks:   {len(conware_set)}')
    logger.info(f'gdbfuzz (Ghidra) blocks: {len(ghidra_blocks)}')
    logger.info('')
    logger.info(f'matched:      {len(matched)}')
    logger.info(f'only conware: {len(only_conware)}')
    logger.info(f'only ghidra:  {len(only_ghidra)}')
    logger.info('')
    logger.info('--- significance ---')
    logger.info(f'Jaccard similarity (matched / union):        {jaccard:.1f}%')
    logger.info(f'% of ghidra blocks also found by conware:    {pct(len(matched), len(ghidra_blocks)):.1f}%')
    logger.info(f'% of conware blocks also found by ghidra:    {pct(len(matched), len(conware_set)):.1f}%')
    if only_conware:
        logger.info(f'of the {len(only_conware)} conware-only blocks:')
        logger.info(f'  {len(behind_ignored_call)} sit behind a leaf block in gdbfuzz\'s CFG (no outgoing '
                    f'edges) -- almost certainly the interior of a function gdbfuzz never traces into (e.g. one '
                    f'on its ignore-list; see out.log), which angr disassembled anyway. Not a sign angr is '
                    f'wrong or incomplete -- the opposite: gdbfuzz is the one that stops here by design.')
        logger.info(f'  {len(unexplained)} are not explained by a leaf-anchor -- a genuine boundary '
                    f'disagreement inside code gdbfuzz did trace, worth a closer manual look')
        logger.debug('')
        logger.debug("=== only-conware blocks anchored behind a gdbfuzz leaf (ignored-call interior) ===")
        by_anchor = {}
        for addr, anchor in behind_ignored_call:
            by_anchor.setdefault(anchor, []).append(addr)
        for anchor, addrs in sorted(by_anchor.items()):
            logger.debug(f'{hex(anchor)} (leaf): {[hex(a) for a in sorted(addrs)]}')
        logger.debug('')
        logger.debug('=== only-conware blocks NOT explained by a leaf anchor ===')
        for addr, anchor in unexplained:
            logger.debug(f'{hex(addr)} (nearest ghidra block: {hex(anchor) if anchor is not None else "none"})')
    logger.info('')
    logger.info(f'(full per-block breakdown written to {args.log})')


if __name__ == '__main__':
    main()
