#!/bin/bash

if [ $# != 2 ]; then
    echo "USAGE: ./relabel.sh <fasta-file> <stub>"
    exit
fi

awk -v stub=$2 '/^>/{print ">" stub "_" ++i; next}{print}' < $1


