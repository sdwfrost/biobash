#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./lenseq.sh <fasta-file>"
    exit
fi

awk '/^>/ {if (seqlen){print seqlen}; print ;seqlen=0;next; } { seqlen += length($0)}END{print seqlen}' $1


