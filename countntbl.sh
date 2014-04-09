#!/bin/bash
awk '
{
if (substr($1,1,1) == ">"){
  if (NR>1){
    printf "\n%s ", substr($1,2,length($1)-1)
  }
  else{
    printf "%s ", substr($1,2,length($1)-1)
  }
  }
else{
  FS="n|N"
  printf "%s", NF-1
  }
}
END{printf "\n"}' "$@"
