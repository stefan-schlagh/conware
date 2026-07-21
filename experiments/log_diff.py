#!/usr/bin/env python

# https://claude.ai/chat/1171ffa5-6608-4c52-aa53-1e7e928bddcc

import argparse
import ast
import csv
import logging
import os
import pprint
import sys

from conware.utils import get_log_diff

logger = logging.getLogger(__name__)


class DiffCaptureHandler(logging.Handler):
    """Intercepts the tab-separated 'idx\\trow\\tidx\\trow' WARNING lines that
    conware.utils.get_log_diff emits for each mismatched row, and turns them
    into structured records instead of letting them print as log noise.

    NOTE: this parses the *log message text*, since get_log_diff doesn't
    return the per-row diffs itself (only aggregate counts). If the exact
    log format in conware.utils ever changes, this parsing will need to
    change with it.
    """

    def __init__(self, records):
        super().__init__()
        self.records_out = records

    def emit(self, record):
        msg = record.getMessage()
        parts = msg.split('\t')
        if len(parts) != 4:
            # Not the structured "idx\trow\tidx\trow" line (e.g. it's the
            # "Found unequal rows X != Y" summary line) -- skip it.
            return
        emulated_idx, emulated_row, recorded_idx, recorded_row = parts
        try:
            emulated_tuple = ast.literal_eval(emulated_row)
            recorded_tuple = ast.literal_eval(recorded_row)
        except (ValueError, SyntaxError):
            return

        def unpack(t):
            # Expected shape: (op, address, value)
            if isinstance(t, tuple) and len(t) == 3:
                return t
            return (None, None, None)

        e_op, e_addr, e_val = unpack(emulated_tuple)
        r_op, r_addr, r_val = unpack(recorded_tuple)

        self.records_out.append({
            'emulated_index': emulated_idx,
            'emulated_op': e_op,
            'emulated_addr': hex(e_addr) if isinstance(e_addr, int) else e_addr,
            'emulated_value': e_val,
            'recorded_index': recorded_idx,
            'recorded_op': r_op,
            'recorded_addr': hex(r_addr) if isinstance(r_addr, int) else r_addr,
            'recorded_value': r_val,
        })


def write_diffs_csv(diff_records, out_file=sys.stdout):
    fieldnames = [
        'emulated_index', 'emulated_op', 'emulated_addr', 'emulated_value',
        'recorded_index', 'recorded_op', 'recorded_addr', 'recorded_value',
    ]
    writer = csv.DictWriter(out_file, fieldnames=fieldnames)
    writer.writeheader()
    for row in diff_records:
        writer.writerow(row)


def print_results(results):
    for name in results:
        out_dict = ["\\texttt{%s}" % name]
        out_dict.append("%d (%.03f)" % (results[name]['conflicts'],
                         100.0 * results[name]['conflicts'] / results[name]['total']))
        out_dict.append("%d (%.03f)" % (results[name]['missing_recorded'],
                         100.0 * results[name]['missing_recorded'] / results[name]['total']))
        out_dict.append("%d (%.03f)" % (results[name]['missing_emulated'],
                         100.0 * results[name]['missing_emulated'] / results[name]['total']))
        # out_dict.append('{:,}'.format(results[name]['total']))
        out_dict.append('{:,}'.format(results[name]['total_emulated']))
        out_dict.append('{:,}'.format(results[name]['total_recorded']))
        print(" & ".join(out_dict) + "\\\\")


def write_results_csv(results, out_file=sys.stdout):
    fieldnames = [
        'name',
        'conflicts', 'conflicts_pct',
        'missing_recorded', 'missing_recorded_pct',
        'missing_emulated', 'missing_emulated_pct',
        'total', 'total_emulated', 'total_recorded',
    ]
    writer = csv.DictWriter(out_file, fieldnames=fieldnames)
    writer.writeheader()
    for name in results:
        r = results[name]
        total = r['total']
        writer.writerow({
            'name': name,
            'conflicts': r['conflicts'],
            'conflicts_pct': "%.03f" % (100.0 * r['conflicts'] / total),
            'missing_recorded': r['missing_recorded'],
            'missing_recorded_pct': "%.03f" % (100.0 * r['missing_recorded'] / total),
            'missing_emulated': r['missing_emulated'],
            'missing_emulated_pct': "%.03f" % (100.0 * r['missing_emulated'] / total),
            'total': total,
            'total_emulated': r['total_emulated'],
            'total_recorded': r['total_recorded'],
        })


if __name__ == "__main__":
    parser = argparse.ArgumentParser()

    # Batch mode: walk a firmware directory of subfolders (original behavior)
    parser.add_argument('firmware_directory', nargs='?', default=None,
                         help="Directory containing one subfolder per firmware sample "
                              "(each with emulated_output.csv, emulated_output_linear.csv, "
                              "recording.tsv). Ignored if --emulated/--recording are given.")

    # Single-file mode: compare exactly one emulated log against one recording
    parser.add_argument('--emulated', '-e', default=None,
                         help="Path to a single emulated log CSV to compare directly "
                              "against --recording (bypasses directory batch mode).")
    parser.add_argument('--recording', '-r', default=None,
                         help="Path to the recording (tsv) to compare --emulated against.")
    parser.add_argument('--name', '-n', default=None,
                         help="Label to use for the single comparison row "
                              "(defaults to the emulated filename).")
    parser.add_argument('--output', '-o', default=None,
                         help="Write single-file mode summary CSV output to this path "
                              "instead of stdout.")
    parser.add_argument('--diff-output', default=None,
                         help="Write the row-level diff details (the per-mismatch rows "
                              "conware.utils normally logs as WARNINGs) to this CSV path "
                              "instead of stdout, for single-file mode.")
    parser.add_argument('--quiet-diff-warnings', action='store_true',
                         help="Suppress the row-by-row 'Found unequal rows' WARNING "
                              "spam emitted by conware.utils during comparison. Has no "
                              "effect on --diff-output, which captures the diffs "
                              "regardless of this flag.")

    args = parser.parse_args()

    logging.basicConfig(level=logging.INFO)

    conware_logger = logging.getLogger("conware.utils")
    diff_records = []

    if args.diff_output:
        # Need WARNING-level messages to flow through so we can capture them,
        # and we don't want them also cluttering the console since they're
        # being written to file instead.
        conware_logger.setLevel(logging.WARNING)
        conware_logger.addHandler(DiffCaptureHandler(diff_records))
        conware_logger.propagate = False
    elif args.quiet_diff_warnings:
        conware_logger.setLevel(logging.ERROR)

    # --- Single-file comparison mode ---
    if args.emulated or args.recording:
        if not (args.emulated and args.recording):
            parser.error("--emulated and --recording must both be provided for single-file mode")

        if not os.path.exists(args.emulated):
            logger.error("%s does not exist!" % args.emulated)
            raise SystemExit(1)
        if not os.path.exists(args.recording):
            logger.error("%s does not exist!" % args.recording)
            raise SystemExit(1)

        name = args.name or os.path.basename(args.emulated)

        results = {}
        try:
            results[name] = get_log_diff(args.emulated, args.recording, None)
        except Exception:
            logger.exception("Log parsing failed")
            raise SystemExit(1)

        if args.output:
            with open(args.output, 'w', newline='') as f:
                write_results_csv(results, f)
        else:
            write_results_csv(results, sys.stdout)

        if args.diff_output:
            with open(args.diff_output, 'w', newline='') as f:
                write_diffs_csv(diff_records, f)

        raise SystemExit(0)

    # --- Batch directory mode (original behavior) ---
    if not args.firmware_directory:
        parser.error("firmware_directory is required unless --emulated/--recording are given")

    results = {}
    results_linear = {}
    for dir in os.listdir(args.firmware_directory):
        print(os.path.basename(dir))

        # optimized model
        emulated_log = os.path.join(args.firmware_directory, dir, "emulated_output.csv")
        if not os.path.exists(emulated_log):
            logger.error("%s does not exist!" % emulated_log)
            continue

        # non-optimized model
        emulated_log_linear = os.path.join(args.firmware_directory, dir, "emulated_output_linear.csv")
        if not os.path.exists(emulated_log_linear):
            logger.error("%s does not exist!" % emulated_log_linear)
            continue

        # actual recording
        recorded_log = os.path.join(args.firmware_directory, dir, "recording.tsv")
        if not os.path.exists(recorded_log):
            logger.error("%s does not exist!" % recorded_log)
            continue

        try:
            results[os.path.basename(dir)] = get_log_diff(emulated_log, recorded_log, None)
        except Exception:
            logger.exception("Log parsing failed")

        try:
            results_linear[os.path.basename(dir)] = get_log_diff(emulated_log_linear, recorded_log, None)
        except Exception:
            logger.exception("Log parsing failed")

    print("Normal")
    print_results(results)
    print("Linear")
    print_results(results_linear)