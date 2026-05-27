#!/bin/bash

for dir in ./firmware/custom/*
do
    dir_name=${dir##*/}     # remove the trailing "/"
    echo "Running $dir_name..."
    # TODO merge with run_all_models.sh
    conware/bin/conware-model-generate $dir
    conware/bin/conware-model-optimize $dir/model.pickle
    conware/bin/conware-model-visualize $dir/model.pickle
    conware/bin/conware-model-visualize $dir/model_optimized.pickle
    conware/bin/conware-emulate $dir/build_uninstrumented/$dir_name.ino.bin  -r $dir -m $dir/model.pickle -t 600 -O emulated_output_linear.csv
    conware/bin/conware-emulate $dir/build_uninstrumented/$dir_name.ino.bin  -r $dir -m $dir/model_optimized.pickle -t 600 -O emulated_output.csv
done