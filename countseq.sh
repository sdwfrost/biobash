#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./countseqs.sh <fasta-file>"
    exit
fi

grep ">" $1 | wc -l


