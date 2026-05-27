#!/usr/bin/env python

import argparse
import collections
import csv
import fnmatch
import logging
import os
import pprint
import sys
import matplotlib.pyplot as plt
import numpy as np
from matplotlib import colors
from matplotlib.ticker import PercentFormatter

from conware.utils import get_log_stats, get_log_heatmap

logger = logging.getLogger(__name__)

def even_keys(d1, d2):
    # Even out addresses
    for v in d1:
        if v not in d2:
            d2[v] = 0
    for v in d2:
        if v not in d1:
            d1[v] = 0

if __name__ == "__main__":

    # Get user input
    parser = argparse.ArgumentParser()
    parser.add_argument("recording_filename", default=None,
                        help="Filename to aggregate MMIO access in")
    # parser.add_argument("emulated_filename", default=None,
    #                     help="Filename to aggregate MMIO access in")
    # parser.add_argument("filename", default="log_compare.pdf",
    #                     help="Filename to save the plot as")
    parser.add_argument("--debug", "-d", default=False, action='store_true',
                        help="Enable debug output.")
    args = parser.parse_args()

    if not os.path.exists(args.recording_filename):
        parser.print_help()
        sys.exit(0)

    # Setup Logging
    if args.debug:
        logging.basicConfig(level=logging.DEBUG)
    else:
        logging.basicConfig(level=logging.INFO)

    logger.info("Opening %s..." % args.recording_filename)
    reads, writes = get_log_heatmap(args.recording_filename)

    def get_2d_array(nested_dict):
        # get the max y axis
        max_y = set()
        for addr in nested_dict:
            max_y |= set(nested_dict[addr].keys())

        rtn_array = []
        for val in sorted(max_y):
            row = []
            for addr in nested_dict:
                if val in nested_dict[addr]:
                    row.append(nested_dict[addr][val])
                else:
                    row.append(0)
            rtn_array.append(row)
        return rtn_array

    read_array = get_2d_array(reads)
    write_array = get_2d_array(writes)
    plt.imshow(read_array )
    plt.show()
    plt.imshow(write_array, cmap='hot', interpolation='nearest')
    plt.show()
    sys.exit(0)
