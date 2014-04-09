#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: ./cleannames.sh <fasta-file>"
    exit
fi

awk '
BEGIN{FS="|"}
{
if (substr($1,1,1) == ">"){
  split($4,arr,".")
  if(NR>1){
    printf "\n>%s\n", arr[1]
  }else{
    printf ">%s\n", arr[1]
  }
}else{
  printf "%s", $1
  }
}
END{printf "\n"}' "$@"


