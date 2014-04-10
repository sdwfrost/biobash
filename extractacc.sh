#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./extractacc.sh <fasta-file>"
    exit
fi

grep -o -E "^>.+" $1 | awk 'BEGIN {FS="|"}{print $4}' | awk 'BEGIN {FS="."}{print $1}'
