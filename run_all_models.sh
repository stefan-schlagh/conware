for dir in firmware/custom/*
do
    dir=${dir%*/}      # remove the trailing "/"
    echo "Building model for $dir from recording ..."
    bin=$(find "$dir/build_uninstrumented" -name "*.ino.bin" | head -1)
    conware/bin/conware-emulate --board-config conware/configs/due.yaml -r "$dir" -t 60 --model "$dir/model.pickle" "$bin"
done