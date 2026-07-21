#!/usr/bin/env python3

# python compare_coverage.py --pattern 'lock_model(?:_\w+)*_\d*_run_\d*' --drcov-outdir out/ --module mybinary --base 0x0 --size 0x100000
r"""
Compare coverage report(s) of the form:

    Missed: <Block for 0x827e5, 4 bytes>
    Match: <Block for 0x804bb, 10 bytes>

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
import struct
import argparse
from collections import namedtuple, defaultdict

LINE_RE = re.compile(
    r'^(Missed|Match):\s*<Block for (0x[0-9a-fA-F]+),\s*(\d+)\s*bytes>'
)

Block = namedtuple("Block", ["status", "size"])


def parse_file(path):
    """Return dict: address (int) -> Block(status, size). Non-matching
    lines (any other output the tool produces) are silently ignored."""
    blocks = {}
    with open(path, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            m = LINE_RE.match(line)
            if not m:
                continue
            status, addr_str, size_str = m.groups()
            addr = int(addr_str, 16)
            blocks[addr] = Block(status, int(size_str))
    return blocks


def find_files(pattern):
    """Resolve a 'directory/regex' style pattern into a sorted list of
    matching file paths."""
    directory = os.path.dirname(pattern) or "."
    basename_pattern = os.path.basename(pattern)
    if not basename_pattern:
        raise ValueError(f"Pattern must include a filename regex: {pattern!r}")
    regex = re.compile(basename_pattern)
    if not os.path.isdir(directory):
        raise ValueError(f"Directory does not exist: {directory!r}")
    matches = [
        os.path.join(directory, f)
        for f in sorted(os.listdir(directory))
        if regex.match(f)
    ]
    return matches


# ---------------------------------------------------------------------
# Two-file comparison (unchanged behavior, kept for convenience)
# ---------------------------------------------------------------------

def summarize(name, blocks):
    total = len(blocks)
    missed = sum(1 for b in blocks.values() if b.status == "Missed")
    matched = total - missed
    pct = (matched / total * 100) if total else 0.0
    print(f"{name}: {total} blocks, {matched} matched, {missed} missed ({pct:.2f}% coverage)")


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


def run_two_file_comparison(old_path, new_path):
    old_blocks = parse_file(old_path)
    new_blocks = parse_file(new_path)

    print("=== Summary ===")
    summarize(old_path, old_blocks)
    summarize(new_path, new_blocks)

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
                               drcov_base=0x0, drcov_size=None):
    if len(paths) < 2:
        print(f"Need at least 2 files, found {len(paths)}.", file=sys.stderr)
        sys.exit(1)

    runs = {}       # path -> blocks dict
    for path in paths:
        runs[path] = parse_file(path)

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

        total = len(sig)
        missed = sum(1 for _, status in sig if status == "Missed")
        matched = total - missed
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
    args = parser.parse_args()

    if args.drcov_outdir and (not args.drcov_module or args.drcov_size is None):
        parser.error("--drcov-outdir requires --module and --size")

    if args.pattern:
        paths = find_files(args.pattern)
        if not paths:
            print(f"No files matched pattern: {args.pattern!r}", file=sys.stderr)
            sys.exit(1)
        run_multi_file_comparison(paths, args.drcov_outdir, args.drcov_module,
                                   args.drcov_base, args.drcov_size)
    elif len(args.files) == 2:
        if args.drcov_outdir:
            parser.error("--drcov-outdir requires multi-file mode "
                          "(3+ files or --pattern)")
        run_two_file_comparison(args.files[0], args.files[1])
    elif len(args.files) > 2:
        run_multi_file_comparison(args.files, args.drcov_outdir, args.drcov_module,
                                   args.drcov_base, args.drcov_size)
    else:
        parser.print_help()
        sys.exit(1)


if __name__ == "__main__":
    main()
