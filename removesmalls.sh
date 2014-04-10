#!/bin/bash

if [ $# != 2 ]; then
    echo "USAGE: ./removesmalls.sh <fasta-file> <threshold>"
    exit
fi

filename=$1
threshold=$2

awk -v min="$threshold" 'BEGIN {RS = ">" ; ORS = ""} length($2) >= min {print ">"$0}' $filename
