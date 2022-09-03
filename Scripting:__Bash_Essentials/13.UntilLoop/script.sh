#!/bin/bash
echo -en 'Input filename: '
read filename
head_size=4
head -c $head_size"KB" /dev/urandom > $filename.txt 
size=$(($(stat --format=%s "$filename.txt") / 1000)) # size print on bit, if I'm divisioning on 1000, I will have size in KB 
until [ $size -gt 1024 ]
do
    #echo -e $head_size 
    head_size=$(($head_size*2))
    size=$(($(stat --format=%s "$filename.txt") / 1000))
    head -c $head_size"KB" /dev/urandom > $filename.txt
    echo -e "Filesize: $size"
done