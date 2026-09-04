#!/usr/bin/env python3
r"""
Compare coverage report(s). Two input formats are auto-detected, line
by line, and can even be mixed within/across files:

  conware format:
    Missed: <Block for 0x827e5, 4 bytes>
    Match: <Block for 0x804bb, 10 bytes>

  GDBFuzz format (hit addresses only, no size, timestamp is ignored):
    30 0x80180
    33 0x8317e

(any other lines in the file are ignored)

Two modes:

1) Two files:
    python compare_coverage.py old.txt new.txt

2) Many files (10+) selected by regex, grouped into "equivalence classes"
   -- runs whose coverage (which addresses are Match vs Missed) is
   identical get grouped together, and the classes are diffed against
   each other:

    python compare_coverage.py --pattern 'logs/run_.*\.txt'

   --pattern takes a path where the *directory* part is used as-is and
   the *filename* part is treated as a regex (re.match, so it anchors
   at the start of the filename).
"""

import sys
import os
import re
import json
import struct
import argparse
from collections import namedtuple, defaultdict

LINE_RE = re.compile(
    r'^(Missed|Match):\s*<Block for (0x[0-9a-fA-F]+),\s*(\d+)\s*bytes>'
)

# GDBFuzz format: "<time since start> <address>", e.g. "30 0x80180"
# Only hit (covered) addresses are ever logged -- no "Missed" concept,
# and no block size, and an address can repeat (hit multiple times).
# The leading number is a timestamp and is irrelevant for coverage
# comparison, so it's ignored.
GDBFUZZ_LINE_RE = re.compile(
    r'^\d+\s+(0x[0-9a-fA-F]+)\s*$'
)

Block = namedtuple("Block", ["status", "size"])


def parse_file(path, hit_size=4):
    """Return dict: address (int) -> Block(status, size).

    Auto-detects, line by line, between two formats:
      - conware: "Missed: <Block for 0xADDR, N bytes>" / "Match: <...>"
      - GDBFuzz: "<time> 0xADDR" (hit addresses only, no size/status)

    For GDBFuzz lines, every logged address is a covered (Match) block;
    since no size is given, `hit_size` is used for all of them (this
    matters mainly for drcov export -- adjust it if you know the real
    basic-block size). Non-matching lines (anything else the tool
    prints) are silently ignored.
    """
    blocks = {}
    with open(path, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            m = LINE_RE.match(line)
            if m:
                status, addr_str, size_str = m.groups()
                addr = int(addr_str, 16)
                blocks[addr] = Block(status, int(size_str))
                continue

            m = GDBFUZZ_LINE_RE.match(line)
            if m:
                addr = int(m.group(1), 16)
                # Repeated hits of the same address: keep it as Match,
                # don't overwrite with a different size.
                blocks.setdefault(addr, Block("Match", hit_size))
                continue

            # Unrecognized line -- ignore.
    return blocks


REGEX_SPECIAL_CHARS = set(".^$*+?{}[]\\|()")


def find_files(pattern, recursive=False):
    """Resolve a pattern into a sorted list of matching file paths.

    The pattern is split at the longest leading run of path components
    that contain no regex special characters -- that run becomes the
    literal base directory to search from, and everything after it
    (which may itself contain '/') is treated as a regex matched
    against the path relative to that base directory (forward slashes,
    re.match so it anchors at the start).

    This means both of these work:
      'logs/run_.*\\.txt'          -> base dir 'logs', regex 'run_.*\\.txt'
      'logs/batch_.*/run_.*\\.txt' -> base dir 'logs', regex spans subfolders

    Non-recursive (default): only the immediate contents of the base
    directory are considered.
    Recursive (--recursive): the base directory is walked, including
    all subfolders, and the regex is matched against the filename OR
    the path relative to the base directory -- so patterns whose regex
    portion spans '/' work whether or not --recursive is passed
    explicitly, since spanning subfolders only makes sense recursively.
    """
    parts = pattern.split("/")
    base_parts = []
    i = 0
    # Leave at least the last component as part of the regex.
    while i < len(parts) - 1 and not any(c in REGEX_SPECIAL_CHARS for c in parts[i]):
        base_parts.append(parts[i])
        i += 1

    if pattern.startswith("/") and not base_parts:
        directory = "/"
    else:
        directory = "/".join(base_parts) if base_parts else "."

    regex_str = "/".join(parts[i:])
    if not regex_str:
        raise ValueError(f"Pattern must include a filename regex: {pattern!r}")
    regex = re.compile(regex_str)

    if not os.path.isdir(directory):
        raise ValueError(f"Directory does not exist: {directory!r}")

    spans_subfolders = "/" in regex_str
    do_walk = recursive or spans_subfolders

    if not do_walk:
        matches = [
            os.path.join(directory, f)
            for f in sorted(os.listdir(directory))
            if os.path.isfile(os.path.join(directory, f)) and regex.match(f)
        ]
        return matches

    matches = []
    for root, dirs, files in os.walk(directory):
        dirs.sort()
        for f in sorted(files):
            full_path = os.path.join(root, f)
            relpath = os.path.relpath(full_path, directory).replace(os.sep, "/")
            if regex.match(f) or regex.match(relpath):
                matches.append(full_path)
    return sorted(matches)


# ---------------------------------------------------------------------
# fuzzer_stats (GDBFuzz) total block count
# ---------------------------------------------------------------------

def read_total_basic_blocks(path):
    """Read a GDBFuzz fuzzer_stats JSON file and return the total number
    of basic blocks in the target, taken from the most recent entry in
    'cfg_updates'. This is used as the denominator for coverage %,
    since GDBFuzz-format logs only ever record hit addresses -- without
    this, 'coverage' would always show as 100% of what was seen, not
    100% of what actually exists in the target."""
    with open(path, "r") as f:
        data = json.load(f)
    cfg_updates = data.get("cfg_updates") or []
    if not cfg_updates:
        raise ValueError(f"No 'cfg_updates' entries found in {path!r}")
    # cfg_updates is chronological; the target's block count only grows
    # (or stays flat) as CFG recovery discovers more code, so the max
    # seen is the most complete total.
    total = max(entry.get("total_basic_blocks", 0) for entry in cfg_updates)
    if total <= 0:
        raise ValueError(f"'total_basic_blocks' missing or zero in {path!r}")
    return total


# ---------------------------------------------------------------------
# Two-file comparison (unchanged behavior, kept for convenience)
# ---------------------------------------------------------------------

def summarize(name, blocks, total_blocks=None):
    """total_blocks: optional override for the denominator (e.g. from a
    GDBFuzz fuzzer_stats file), for formats that only log hits and have
    no explicit 'Missed' entries to fall back on."""
    matched = sum(1 for b in blocks.values() if b.status == "Match")
    if total_blocks is not None:
        total = total_blocks
        missed = total - matched
    else:
        missed = sum(1 for b in blocks.values() if b.status == "Missed")
        total = matched + missed
    pct = (matched / total * 100) if total else 0.0
    print(f"{name}: {matched}/{total} matched, {missed} missed ({pct:.2f}% coverage)")


def compare_two(old_blocks, new_blocks):
    old_addrs = set(old_blocks)
    new_addrs = set(new_blocks)

    only_old = old_addrs - new_addrs
    only_new = new_addrs - old_addrs
    common = old_addrs & new_addrs

    newly_covered = []
    newly_missed = []
    size_changed = []

    for addr in common:
        ob, nb = old_blocks[addr], new_blocks[addr]
        if ob.status != nb.status:
            if ob.status == "Missed" and nb.status == "Match":
                newly_covered.append(addr)
            else:
                newly_missed.append(addr)
        elif ob.size != nb.size:
            size_changed.append(addr)

    return {
        "only_old": only_old,
        "only_new": only_new,
        "newly_covered": newly_covered,
        "newly_missed": newly_missed,
        "size_changed": size_changed,
    }


def print_addrs(label, addrs, blocks=None):
    if not addrs:
        return
    print(f"\n{label} ({len(addrs)}):")
    for addr in sorted(addrs):
        extra = f", {blocks[addr].size} bytes" if blocks else ""
        print(f"  0x{addr:x}{extra}")


def run_two_file_comparison(old_path, new_path, hit_size=4, total_blocks=None):
    old_blocks = parse_file(old_path, hit_size)
    new_blocks = parse_file(new_path, hit_size)

    print("=== Summary ===")
    summarize(old_path, old_blocks, total_blocks)
    summarize(new_path, new_blocks, total_blocks)

    diff = compare_two(old_blocks, new_blocks)

    print("\n=== Differences ===")
    print_addrs("Newly covered (Missed -> Match)", diff["newly_covered"])
    print_addrs("Newly missed (Match -> Missed)", diff["newly_missed"])
    print_addrs("Blocks only in old file", diff["only_old"], old_blocks)
    print_addrs("Blocks only in new file", diff["only_new"], new_blocks)
    print_addrs("Blocks with changed size (same status)", diff["size_changed"])

    if not any(diff.values()):
        print("\nNo differences found between the two files.")


# ---------------------------------------------------------------------
# drcov export
# ---------------------------------------------------------------------

def write_drcov(blocks, out_path, module_name, module_base, module_size, mod_id=0):
    """blocks: list of (addr, size) tuples for *covered* (Match) blocks."""
    with open(out_path, 'wb') as f:
        f.write(b"DRCOV VERSION: 2\n")
        f.write(b"DRCOV FLAVOR: drcov\n")
        f.write(b"Module Table: version 2, count 1\n")
        f.write(b"Columns: id, base, end, entry, checksum, timestamp, path\n")
        end = module_base + module_size
        f.write(f"{mod_id}, {hex(module_base)}, {hex(end)}, 0x0, 0x0, 0x0, {module_name}\n".encode())
        f.write(f"BB Table: {len(blocks)} bbs\n".encode())
        for addr, size in blocks:
            offset = addr - module_base  # drcov stores offsets relative to module base
            f.write(struct.pack('<IHH', offset, size, mod_id))


def matched_blocks_list(blocks):
    """blocks: dict addr -> Block(status, size). Returns sorted list of
    (addr, size) for Match entries only, suitable for write_drcov."""
    return sorted(
        (addr, b.size) for addr, b in blocks.items() if b.status == "Match"
    )


def export_drcov_per_class(class_list, class_blocks, outdir, module_name,
                            module_base, module_size):
    os.makedirs(outdir, exist_ok=True)
    for i, (sig, members) in enumerate(class_list):
        label = f"Class {chr(65 + i)}" if i < 26 else f"Class {i}"
        blocks = class_blocks[label]
        matched = matched_blocks_list(blocks)
        safe_label = label.replace(" ", "_")
        out_path = os.path.join(outdir, f"{safe_label}.log")
        write_drcov(matched, out_path, module_name, module_base, module_size)
        print(f"[{label}] Wrote {len(matched)} covered blocks to {out_path} "
              f"(representative run: {members[0]})")


# ---------------------------------------------------------------------
# Multi-file equivalence-class comparison
# ---------------------------------------------------------------------

def signature(blocks):
    """A hashable fingerprint of a run: which addresses are Match vs
    Missed. (Size is not part of the signature -- it's structural, not
    run-dependent -- but is kept available for reporting.)"""
    return frozenset((addr, b.status) for addr, b in blocks.items())


def run_multi_file_comparison(paths, drcov_outdir=None, drcov_module=None,
                               drcov_base=0x0, drcov_size=None, hit_size=4,
                               total_blocks=None):
    if len(paths) < 2:
        print(f"Need at least 2 files, found {len(paths)}.", file=sys.stderr)
        sys.exit(1)

    runs = {}       # path -> blocks dict
    for path in paths:
        runs[path] = parse_file(path, hit_size)

    # Group files into equivalence classes by identical signature.
    classes = defaultdict(list)   # signature -> [paths]
    for path, blocks in runs.items():
        classes[signature(blocks)].append(path)

    class_list = sorted(classes.items(), key=lambda kv: -len(kv[1]))

    print("=== Equivalence Classes ===")
    print(f"{len(paths)} files -> {len(class_list)} distinct coverage pattern(s)\n")

    class_labels = {}
    class_blocks = {}
    for i, (sig, members) in enumerate(class_list):
        label = f"Class {chr(65 + i)}" if i < 26 else f"Class {i}"
        class_labels[sig] = label
        # keep one representative blocks dict for this class
        class_blocks[label] = runs[members[0]]

        matched = sum(1 for _, status in sig if status == "Match")
        if total_blocks is not None:
            total = total_blocks
            missed = total - matched
        else:
            missed = sum(1 for _, status in sig if status == "Missed")
            total = matched + missed
        pct = (matched / total * 100) if total else 0.0

        print(f"{label}: {len(members)} run(s), {matched}/{total} matched "
              f"({pct:.2f}% coverage)")
        for m in members:
            print(f"    - {m}")
        print()

    if drcov_outdir:
        print("=== drcov Export ===")
        export_drcov_per_class(class_list, class_blocks, drcov_outdir,
                                drcov_module, drcov_base, drcov_size)
        print()

    if len(class_list) == 1:
        print("All runs are identical -- no differences to show.")
        return

    # Diff every class against the largest class (Class A), which acts
    # as the baseline/reference.
    baseline_label = "Class A"
    baseline_blocks = class_blocks[baseline_label]

    print("=== Differences (each class vs. Class A, the largest group) ===")
    for i, (sig, members) in enumerate(class_list):
        label = f"Class {chr(65 + i)}" if i < 26 else f"Class {i}"
        if label == baseline_label:
            continue

        other_blocks = class_blocks[label]
        diff = compare_two(baseline_blocks, other_blocks)

        print(f"\n--- {baseline_label} vs {label} ---")
        print_addrs("Newly covered (Missed -> Match)", diff["newly_covered"])
        print_addrs("Newly missed (Match -> Missed)", diff["newly_missed"])
        print_addrs(f"Blocks only in {baseline_label}", diff["only_old"], baseline_blocks)
        print_addrs(f"Blocks only in {label}", diff["only_new"], other_blocks)
        print_addrs("Blocks with changed size (same status)", diff["size_changed"])
        if not any(diff.values()):
            print("  (no differences)")

    # Also surface addresses that are "flaky" -- i.e. differ across
    # classes at all -- as a compact cross-class table.
    print("\n=== Flaky Addresses (status differs between at least two classes) ===")
    all_addrs = set()
    for sig, _ in class_list:
        all_addrs.update(addr for addr, _ in sig)

    status_by_class_by_addr = defaultdict(dict)  # addr -> {label: status}
    for i, (sig, members) in enumerate(class_list):
        label = f"Class {chr(65 + i)}" if i < 26 else f"Class {i}"
        sig_map = dict(sig)
        for addr in all_addrs:
            if addr in sig_map:
                status_by_class_by_addr[addr][label] = sig_map[addr]

    labels_in_order = [
        (f"Class {chr(65 + i)}" if i < 26 else f"Class {i}")
        for i in range(len(class_list))
    ]

    flaky_found = False
    for addr in sorted(all_addrs):
        statuses = status_by_class_by_addr[addr]
        distinct = set(statuses.values())
        if len(distinct) > 1:
            flaky_found = True
            row = ", ".join(
                f"{lbl}={statuses.get(lbl, 'n/a')}" for lbl in labels_in_order
            )
            print(f"  0x{addr:x}: {row}")

    if not flaky_found:
        print("  (none)")


def main():
    parser = argparse.ArgumentParser(
        description="Compare coverage report(s) with Missed:/Match: lines."
    )
    parser.add_argument(
        "files", nargs="*",
        help="Two files to compare directly (legacy mode)."
    )
    parser.add_argument(
        "--pattern",
        help="A 'directory/regex' pattern selecting many log files to "
             "group into equivalence classes, e.g. 'logs/run_.*\\.txt'"
    )
    parser.add_argument(
        "-r", "--recursive", action="store_true",
        help="With --pattern, also search subfolders of the pattern's "
             "directory. The regex is matched against either the bare "
             "filename or the path relative to that directory, e.g. "
             "'batch_.*/run_\\d+\\.txt'."
    )
    parser.add_argument(
        "--drcov-outdir",
        help="If set (multi-file mode only), write one drcov .log file per "
             "equivalence class into this directory, e.g. for loading into "
             "Lighthouse/Dragondance/Cartographer to compare visually."
    )
    parser.add_argument(
        "--module", dest="drcov_module",
        help="Module/binary name as it appears in your disassembler "
             "(required if --drcov-outdir is set)."
    )
    parser.add_argument(
        "--base", dest="drcov_base", type=lambda x: int(x, 0), default=0x0,
        help="Base address of the module (default 0x0 if addrs are already "
             "file/image offsets)."
    )
    parser.add_argument(
        "--size", dest="drcov_size", type=lambda x: int(x, 0),
        help="Size of the module in memory, must cover the max address in "
             "your data (required if --drcov-outdir is set)."
    )
    parser.add_argument(
        "--hit-size", type=lambda x: int(x, 0), default=4,
        help="Synthetic block size (in bytes) to use for GDBFuzz-format "
             "lines ('<time> 0xADDR'), which don't carry a real size "
             "(default: 4). Only affects GDBFuzz-format input; conware-"
             "format 'Missed:/Match:' lines always use their real size."
    )
    parser.add_argument(
        "--fuzzer-stats",
        help="Path to a GDBFuzz fuzzer_stats JSON file. Its "
             "'total_basic_blocks' (from cfg_updates) is used as the "
             "denominator for coverage %% -- useful because GDBFuzz-format "
             "logs only record hit addresses, so without this the "
             "coverage %% would show 100%% of what was seen rather than "
             "100%% of what actually exists in the target."
    )
    parser.add_argument(
        "--total-blocks", type=lambda x: int(x, 0),
        help="Manually specify the total number of basic blocks in the "
             "target, as an alternative to --fuzzer-stats."
    )
    args = parser.parse_args()

    if args.drcov_outdir and (not args.drcov_module or args.drcov_size is None):
        parser.error("--drcov-outdir requires --module and --size")

    if args.fuzzer_stats and args.total_blocks is not None:
        parser.error("--fuzzer-stats and --total-blocks are mutually exclusive")

    total_blocks = args.total_blocks
    if args.fuzzer_stats:
        try:
            total_blocks = read_total_basic_blocks(args.fuzzer_stats)
        except (OSError, ValueError, json.JSONDecodeError) as e:
            parser.error(f"Failed to read total block count from "
                         f"{args.fuzzer_stats!r}: {e}")

    if args.pattern:
        try:
            paths = find_files(args.pattern, args.recursive)
        except (ValueError, re.error) as e:
            print(f"Error resolving pattern {args.pattern!r}: {e}", file=sys.stderr)
            if "\\" in args.pattern:
                print("Hint: the pattern contains backslashes, but directory "
                      "separators must be forward slashes ('/'), even on "
                      "Windows -- backslash is reserved for regex escapes "
                      "like \\w or \\d, so stray backslashes are often "
                      "parsed as (invalid) regex escapes. Try replacing "
                      "path separators with '/'.", file=sys.stderr)
            sys.exit(1)
        if not paths:
            print(f"No files matched pattern: {args.pattern!r}", file=sys.stderr)
            if "\\" in args.pattern:
                print("Hint: the pattern contains backslashes, but directory "
                      "separators must be forward slashes ('/'), even on "
                      "Windows -- backslash is reserved for regex escapes "
                      "like \\w or \\d. Try replacing path separators with "
                      "'/'.", file=sys.stderr)
            sys.exit(1)
        run_multi_file_comparison(paths, args.drcov_outdir, args.drcov_module,
                                   args.drcov_base, args.drcov_size, args.hit_size,
                                   total_blocks)
    elif len(args.files) == 2:
        if args.drcov_outdir:
            parser.error("--drcov-outdir requires multi-file mode "
                          "(3+ files or --pattern)")
        run_two_file_comparison(args.files[0], args.files[1], args.hit_size,
                                 total_blocks)
    elif len(args.files) > 2:
        run_multi_file_comparison(args.files, args.drcov_outdir, args.drcov_module,
                                   args.drcov_base, args.drcov_size, args.hit_size,
                                   total_blocks)
    else:
        parser.print_help()
        sys.exit(1)


if __name__ == "__main__":
    main()