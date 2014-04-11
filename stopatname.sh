#!/bin/bash

if [ $# != 2 ]; then
    echo "USAGE: ./stopatname.sh <fasta-file> <name>"
    exit
fi

filename=$1
name=$2

awk -v name="$name" '
BEGIN {RS = ">" ; ORS = ""}
{
print ">"$0
if ($1 == name) {
    exit
  }
}
' $filename
