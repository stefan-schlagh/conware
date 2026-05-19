for dir in firmware/custom/*
do
    dir=${dir%*/}      # remove the trailing "/"
    echo "Building model for $dir from recording ..."
    conware/bin/conware-model-optimize $dir
done