#!/bin/bash

if [ $# != 1 ]; then
	echo "USAGE: ./extractheader.sh <fasta-file>"
	exit
fi

sed -e 's/\(^>.*$\)/#\1#/' $1 | tr -d "\r" | tr -d "\n" | sed -e 's/$/#/' | tr "#" "\n" | sed -e '/^$/d' | awk 'BEGIN{RS=">"}NR>1{sub("\n","\t"); gsub("\n",""); print RS$0}' | sed 's/>//g' | cut -f1
