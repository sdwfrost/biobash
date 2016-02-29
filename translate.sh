#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./translate.sh <fasta-file>"
    exit
fi

transeq -filter $1 | sed -r -e 's/\_[0-9]*$//g'


