#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./degap.sh <fasta-file>"
    exit
fi

sed -e 's/\(^>.*$\)/#\1#/' $1 | tr -d "\r" | tr -d "\n" | sed -e 's/$/#/' | tr "#" "\n" | sed -e '/^$/d' | sed '/^>/! s/\-//g'

