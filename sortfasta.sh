#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./sortfasta <fasta-file>"
    exit
fi

sed -e 's/\(^>.*$\)/#\1#/' $1 | tr -d "\r" | tr -d "\n" | sed -e 's/$/#/' | tr "#" "\n" | sed -e '/^$/d' | paste - - | perl -ne '@x=split m/\t/; unshift @x, length($x[1]); print join "\t",@x;'| sort -n -r | cut -f2- | tr "\t" "\n"

