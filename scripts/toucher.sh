#!/bin/bash

echo "touching list.txt"
echo "end is `cat /host/list.txt | tail -n 1`" 
i=0
while read in;
do
  touch "$in"
  if [[ "$(( $i % 100 ))" == "0" ]] ; then
    echo " "
    #echo $in
    #sleep 0.1
  fi
done < /host/list.txt
echo "done touching list.txt"

