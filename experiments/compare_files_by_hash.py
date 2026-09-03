#!/usr/bin/env python3
"""
https://claude.ai/chat/36880ee3-2380-4ffd-a68e-1bb5a06f1078
compare_files_by_hash.py

Find files whose path/name matches a regex, hash each one, and report
how many files share each hash value plus one example file per hash.

Usage:
    python3 hash_files.py PATTERN [--dir DIRECTORY] [--algo sha256] [--full-path]

Examples:
    # Match all .txt files in current directory tree
    python3 hash_files.py '\\.txt$'

    # Match files starting with "report" under a specific directory
    python3 hash_files.py '^report' --dir /path/to/data

    # Use md5 instead of sha256, and match against the full path (not just filename)
    python3 hash_files.py 'invoice_2024' --algo md5 --full-path
"""

import argparse
import hashlib
import os
import re
import sys
from collections import defaultdict


def hash_file(path: str, algo: str, chunk_size: int = 65536) -> str:
    """Compute the hash of a file's contents in chunks (safe for large files)."""
    h = hashlib.new(algo)
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(chunk_size), b""):
            h.update(chunk)
    return h.hexdigest()


def find_matching_files(root_dir: str, pattern: re.Pattern, match_full_path: bool):
    """Recursively walk root_dir, yielding paths whose name/path matches pattern."""
    for dirpath, _dirnames, filenames in os.walk(root_dir):
        for name in filenames:
            full_path = os.path.join(dirpath, name)
            # Normalize to forward slashes so patterns like 'a/b/.*\.csv' work
            # the same on Windows and Unix.
            target = full_path.replace(os.sep, "/") if match_full_path else name
            if pattern.search(target):
                yield full_path


def main():
    parser = argparse.ArgumentParser(
        description="Hash files matching a regex and group them by hash value."
    )
    parser.add_argument("pattern", help="Regex pattern to match file names (or full paths with --full-path).")
    parser.add_argument(
        "--dir", default=".", help="Root directory to search recursively (default: current directory)."
    )
    parser.add_argument(
        "--algo", default="sha256",
        help="Hash algorithm to use (e.g. sha256, md5, sha1). Default: sha256."
    )
    parser.add_argument(
        "--full-path", action="store_true",
        help="Match the regex against the full file path instead of just the filename. "
             "(Automatically enabled if the pattern contains a '/'.)"
    )
    args = parser.parse_args()

    # If the pattern clearly targets a path (contains a slash), match against
    # the full path even if --full-path wasn't explicitly passed.
    match_full_path = args.full_path or "/" in args.pattern

    try:
        pattern = re.compile(args.pattern)
    except re.error as e:
        print(f"Invalid regex: {e}", file=sys.stderr)
        sys.exit(1)

    if args.algo not in hashlib.algorithms_available:
        print(f"Unsupported hash algorithm: {args.algo}", file=sys.stderr)
        sys.exit(1)

    if not os.path.isdir(args.dir):
        print(f"Not a directory: {args.dir}", file=sys.stderr)
        sys.exit(1)

    hash_groups = defaultdict(list)  # hash -> list of file paths
    matched_count = 0

    for path in find_matching_files(args.dir, pattern, match_full_path):
        matched_count += 1
        try:
            digest = hash_file(path, args.algo)
        except (OSError, PermissionError) as e:
            print(f"  [skipped] {path}: {e}", file=sys.stderr)
            continue
        hash_groups[digest].append(path)

    if matched_count == 0:
        print("No files matched the given pattern.")
        return

    print(f"Matched {matched_count} file(s). Found {len(hash_groups)} unique {args.algo} hash(es).\n")

    # Sort by count descending, then by hash for stable output
    for digest, paths in sorted(hash_groups.items(), key=lambda kv: (-len(kv[1]), kv[0])):
        print(f"{digest}  ->  {len(paths)} file(s)")
        print(f"    example: {paths[0]}")


if __name__ == "__main__":
    main()