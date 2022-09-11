#!/bin/bash
index=0 # index for loop
array=($@)
first_elem=${array[0]}
echo ${array[@]}
for i in $@; # Array all input argument
do
    index=$(($index+1)) # index 
    echo -e "Arg$index: $i\n" # print arg
    if [ $index -lt $# ]; then # if index < lenght array size, for check last element
        array[$index-1]=$((${array[$index-1]}+${array[$index]})) # change array for print
        continue
    fi  
    array[$index-1]=$(($first_elem+${array[$index-1]})) # ${array[$index-1]} -  first + last element after all if check
done
echo ${array[@]} # print new array