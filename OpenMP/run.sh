#!/bin/bash

source ./scaling_settings.sh

current=$(pwd)
echo "current $current"

for file in $(find ./ -name "*_out")
do
    directory=$(dirname "$file")
    echo "Entering $directory"
    
    # Change into the directory and run make
    (cd "$directory" && OMP_NUM_THREADS=$max_cores && taskset -c $cores ./*_out)
    
    echo "Exiting $directory"
    cd $current
done    