#!/bin/bash

current=$(pwd)
echo "current $current"

for file in $(find ./ -name "Makefile")
do
    directory=$(dirname "$file")
    echo "Entering $directory"
    
    # Change into the directory and run make
    (cd "$directory" && make clean && make)
    
    echo "Exiting $directory"
    cd $current
done    