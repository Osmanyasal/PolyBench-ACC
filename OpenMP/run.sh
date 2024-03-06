#!/bin/bash

current=$(pwd)
echo "current $current"

for file in $(find ./ -name "*_out")
do
    directory=$(dirname "$file")
    echo "Entering $directory"
    
    # Change into the directory and run make
    (cd "$directory" && ./*_out)
    
    echo "Exiting $directory"
    cd $current
done    