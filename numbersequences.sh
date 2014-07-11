#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./numbersequences.sh <fasta-file>"
    exit
fi

awk '
BEGIN{FS="|"}
{
if (substr($1,1,1) == ">"){
  numseq++;
  if(NR>1){
    printf "\n>X%s\n", numseq;
  }else{
    printf ">X%s\n", numseq;
  }
  
}else{
  printf "%s", $1
  }
}
END{printf "\n"}' "$@"


