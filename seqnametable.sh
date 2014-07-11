#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./seqnametable.sh <fasta-file>"
    exit
fi

awk '
BEGIN{FS="|"}
{
if (substr($1,1,1) == ">"){
  numseq++;
  if(NR>1){
    printf "\nX%s\t%s", numseq, substr($1,2);
  }else{
    printf "X%s\t%s", numseq, substr($1,2);
  }
  
}
}
END{printf "\n"}' "$@"


