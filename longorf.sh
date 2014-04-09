#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./longorf <fasta-file>"
    exit
fi

numseq=$(grep -c  ">" $1)

for i in $(seq 1 $numseq)
do
    (nthseq $1 -filter -number $i | getorf -filter -table 0 -find 2 -noreverse | sizeseq -filter -desc | seqret -filter -first)
done

