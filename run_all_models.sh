#!/bin/bash
set -x #echo on

echo "started..." > "status.txt"

for dir in firmware/custom/*
do
    dir=${dir%*/}      # remove the trailing "/"
    #echo "Building model for $dir from recording ..."
    bin=$(find "$dir/build_uninstrumented" -name "*.ino.bin" | head -1)
    elf=$(find "$dir/build_uninstrumented" -name "*.ino.elf" | head -1)

    # TODO also build??

    # generate model
    #conware/bin/conware-model-generate $dir
    # optimize model
    #conware/bin/conware-model-optimize $dir/model.pickle

    # apply uart hack
    #python experiments/uart_hack.py $dir/model.pickle
    #python experiments/uart_hack.py $dir/model_optimized.pickle

    # visualize both
    #conware/bin/conware-model-visualize $dir/model.pickle
    #conware/bin/conware-model-visualize $dir/model_optimized.pickle

    for ((i=1; i<=20; i++))
    do

        echo "$dir run $i" >> "status.txt"

        conware/bin/conware-emulate -r $dir -t 60 --coverage -m "$dir/model.pickle" -O emulated_output_linear.csv -C "$bin" #|& tee "$dir/emulate_out_linear.txt"
        python experiments/basic_block_compare.py -p "$elf" -l "$dir/emulate_logs/qemu_trace_log.txt" > "$dir/basic_block_compare_linear_$i.txt"

        conware/bin/conware-emulate -r $dir -t 60 --coverage -m "$dir/model_optimized.pickle" -O emulated_output.csv -C "$bin" #|& tee "$dir/emulate_out.txt"
        python experiments/basic_block_compare.py -p "$elf" -l "$dir/emulate_logs/qemu_trace_log.txt" > "$dir/basic_block_compare_$i.txt"
        
        #conware/bin/conware-emulate -r $dir -t 60 --coverage -m "$dir/model_hacked.pickle" -O emulated_output_linear_hacked.csv -C "$bin" #|& tee "$dir/emulate_out_linear_hacked.txt"
        #python experiments/basic_block_compare.py -p "$elf" -l "$dir/emulate_logs/qemu_trace_log.txt" > "$dir/basic_block_compare_linear_hacked_$i.txt"
        
        #conware/bin/conware-emulate -r $dir -t 60 --coverage -m "$dir/model_optimized_hacked.pickle" -O emulated_output_hacked.csv -C "$bin" #|& tee "$dir/emulate_out_hacked.txt"
        #python experiments/basic_block_compare.py -p "$elf" -l "$dir/emulate_logs/qemu_trace_log.txt" > "$dir/basic_block_compare_hacked_$i.txt"

        # TODO also include lock
        # for conware-get-mmio-dist-aggregate
        
        # this needs python 3.10+ with angr, matplotlib
        #python experiments/basic_block_compare.py -p "$elf" -l "$dir/emulate_logs/qemu_trace_log.txt" |& tee "$dir/basic_block_compare.txt"
        python experiments/conware-mmio-counter.py $dir/emulated_output.csv  $dir/mmio_counter_$i.pdf
        python experiments/conware-mmio-heatmap.py $dir/emulated_output.csv  $dir/mmio_heatmap_$i.pdf

        python experiments/conware-model-stats.py $dir/model.pickle |& tee $dir/conware-model-stats_linear_$i.txt
        python experiments/conware-model-stats.py $dir/model_optimized.pickle |& tee $dir/conware-model-stats_$i.txt
        #python experiments/conware-model-stats.py $dir/model_hacked.pickle |& tee $dir/conware-model-stats_linear_hacked_$i.txt
        #python experiments/conware-model-stats.py $dir/model_optimized_hacked.pickle |& tee $dir/conware-model-stats_hacked_$i.txt

        python experiments/log_diff.py --emulated $dir/emulated_output_linear.csv --recording $dir/recording.tsv --output $dir/summary_linear_$i.csv --diff-output $dir/diffs_linear_$i.csv
        python experiments/log_diff.py --emulated $dir/emulated_output.csv --recording $dir/recording.tsv --output $dir/summary_$i.csv --diff-output $dir/diffs_$i.csv
    done

    mkdir $dir/bb_out 
    # TODO why module mybinary
    python compare_coverage.py --pattern "$dir/basic_block(?:_\w+)*_\d*.txt" --drcov-outdir $dir/bb_out --module mybinary --base 0x0 --size 0x100000 > $dir/bb_out/comp.txt

done

# TODO log diff for each run - compare with coverage information: more sophisticated script necessary, should not need all emulated_output files saved, as they are quite big
# best: store baseline and then only diffs
python experiments/log_diff.py firmware/custom > log_diff.txt

python experiments/conware-execution-stats-aggregate.py firmware/custom/ |& tee firmware/custom/conware-execution-stats-aggregate.txt
python experiments/conware-model-stats-aggregate.py firmware/custom/ |& tee firmware/custom/conware-model-stats-aggregate.txt