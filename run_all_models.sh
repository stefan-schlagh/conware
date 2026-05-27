for dir in firmware/custom/*
do
    dir=${dir%*/}      # remove the trailing "/"
    echo "Building model for $dir from recording ..."
    bin=$(find "$dir/build_uninstrumented" -name "*.ino.bin" | head -1)

    # TODO also build??

    # generate model
    conware/bin/conware-model-generate $dir
    # optimize model
    conware/bin/conware-model-optimize $dir/model.pickle
    # apply uart hack
    python experiments/uart_hack.py $dir/model.pickle
    python experiments/uart_hack.py $dir/model_optimized.pickle
    # visualize both
    conware/bin/conware-model-visualize $dir/model.pickle
    conware/bin/conware-model-visualize $dir/model_optimized.pickle

    # TODO with or without coverage?
    conware/bin/conware-emulate -r $dir -t 600 --coverage -m "$dir/model.pickle" -O emulated_output_linear.csv "$bin" |& tee "$dir/emulate_out_linear.txt"
    conware/bin/conware-emulate -r $dir -t 600 --coverage -m "$dir/model_optimized.pickle" -O emulated_output.csv "$bin" |& tee "$dir/emulate_out.txt"
    conware/bin/conware-emulate -r $dir -t 600 --coverage -m "$dir/model_hacked.pickle" -O emulated_output_linear_hacked.csv "$bin" |& tee "$dir/emulate_out_linear_hacked.txt"
    conware/bin/conware-emulate -r $dir -t 600 --coverage -m "$dir/model_optimized_hacked.pickle" -O emulated_output_hacked.csv "$bin" |& tee "$dir/emulate_out_hacked.txt"
    
    # TODO also include lock
    # for conware-get-mmio-dist-aggregate
    
    # this needs python 3.10+ with angr, matplotlib
    python experiments/basic_block_compare.py -p "$dir/build_uninstrumented/*.ino.elf" -l "$dir/emulate_logs/qemu_trace_log.txt" |& tee "$dir/basic_block_compare.txt"
    python experiments/conware-mmio-counter.py firmware/custom/blink/emulated_output.csv  firmware/custom/blink/log_compare.pdf
    # TODO write to file
    #python experiments/conware-mmio-heatmap.py firmware/custom/blink/emulated_output.csv  firmware/custom/blink/log_compare.pdf

    python experiments/conware-model-stats.py $dir/model.pickle |& tee $dir/conware-model-stats_linear.txt
    python experiments/conware-model-stats.py $dir/model_optimized.pickle |& tee $dir/conware-model-stats.txt
    python experiments/conware-model-stats.py $dir/model_hacked.pickle |& tee $dir/conware-model-stats_linear_hacked.txt
    python experiments/conware-model-stats.py $dir/model_optimized_hacked.pickle |& tee $dir/conware-model-stats_hacked.txt


    # TODO log_diff: run once without and once with optimization - use log_diff.py to compare the differences
    # for this the output csv probably needs to be renamed once
done


python experiments/conware-execution-stats-aggregate.py firmware/custom/ |& tee firmware/custom/conware-execution-stats-aggregate.txt
python experiments/conware-model-stats-aggregate.py firmware/custom/ |& tee firmware/custom/conware-model-stats-aggregate.txt