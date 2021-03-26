#!/usr/bin/env bash
dt=$(date '+%d/%m/%Y %H:%M:%S');

$ echo "$dt"
$ echo "$PWD"

$ echo "each PATH element:"
IFS=':'
read -ra ADDR <<< "$PATH"
for i in "${ADDR[@]}"; #accessing each element of array
do
echo "$i"
done