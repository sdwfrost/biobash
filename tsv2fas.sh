#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./tsv2fas.sh <fasta-file>"
    exit
fi

awk '{sub("\t","\n");print ">"$0}' $1
