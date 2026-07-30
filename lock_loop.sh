#!/bin/bash
for ((i=1; i<=1000; i++))
do
  conware/bin/conware-emulate -r experiments/lock/lock --coverage -m experiments/lock/model_merged.pickle -O emulated_output_linear.csv -t 60 -C firmware/custom/lock/build_uninstrumented/lock.ino.bin 
  python experiments/basic_block_compare.py -p firmware/custom/lock/build_uninstrumented/lock.ino.elf -l experiments/lock/lock/emulate_logs/qemu_trace_log.txt > "experiments/lock/lock/lock_model_merged_60_run_$i"

  conware/bin/conware-emulate -r experiments/lock/lock --coverage -m experiments/lock/model_merged_optimized.pickle -O emulated_output.csv -t 60 -C firmware/custom/lock/build_uninstrumented/lock.ino.bin 
  python experiments/basic_block_compare.py -p firmware/custom/lock/build_uninstrumented/lock.ino.elf -l experiments/lock/lock/emulate_logs/qemu_trace_log.txt > "experiments/lock/lock/lock_model_merged_optimized_60_run_$i"

  python experiments/log_diff.py --emulated experiments/lock/lock/emulated_output_linear.csv --recording firmware/custom/lock/recording.tsv --output experiments/lock/lock/summary_linear_$i.csv --diff-output experiments/lock/lock/diffs_linear_$i.csv
  python experiments/log_diff.py --emulated experiments/lock/lock/emulated_output.csv --recording firmware/custom/lock/recording.tsv --output experiments/lock/lock/summary_$i.csv --diff-output experiments/lock/lock/diffs_$i.csv
    
done

python compare_coverage.py --pattern "experiments/lock/lock/lock(?:_\w+)*_\d*" > experiments/lock/lock/comp.txt
