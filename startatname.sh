#!/bin/bash

filename=$1
name=$2

awk -v name="$name" '
BEGIN {RS = ">" ; ORS = ""; p = 0}
{
if($1 == name) {p=1;}
if(p != 0){print ">"$0;}
}' $filename
