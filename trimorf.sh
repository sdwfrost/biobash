#!/bin/bash

if [ $# != 3 ]; then
    echo "USAGE: ./trimorf <fasta-file> <start-region-length> <end-region-length>"
    exit
fi

numseq=$(grep -c  ">" $1)

for i in $(seq 1 $numseq)
do
    startpos=$(nthseq $1 -filter -number $i| extractseq -filter -regions "1-$2" | getorf -filter -table 0 -find 2 -noreverse | sizeseq -filter -desc | head -n 1 | sed 's/.*\[//;s/\-.*//;')
	seqlen=$(nthseq $1 -filter -number $i | infoseq -filter -noheading -only -length)
	startendpos=$(($seqlen-$3+1))
	endpos=$(nthseq $1 -filter -number $i| extractseq -filter -regions "$startendpos-$seqlen" | getorf -filter -table 0 -find 2 -noreverse | sizeseq -filter -desc | head -n 1 | sed 's/.*\-//;s/\].*//;')
	endpos2=$(($seqlen+$endpos-$3))
	(nthseq $1 -filter -number $i | extractseq -filter -regions "$startpos:$endpos2")
done
