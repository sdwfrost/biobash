#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./dedup.sh <fasta-file>"
    exit
fi

sed -e 's/\(^>.*$\)/#\1#/' $1 | tr -d "\r" | tr -d "\n" | sed -e 's/$/#/' | tr "#" "\n" | sed -e '/^$/d' | sed -e '/^>/s/$/@/' -e 's/^>/#/' | tr -d '\n' | tr "#" "\n" | tr "@" "\t" | sort -u -t $'\t' -f -k 2,2  | sed -e 's/^/>/' -e 's/\t/\n/'


