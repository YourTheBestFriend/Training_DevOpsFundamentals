#!/bin/bash
function plusone() {
    return $(($1+1))
}

function multiple_and_print() {
    array=($@)
    index=0
    #echo ${array[@]}
    for var in ${array[@]};
    do
        if [ $# -gt $index ]; then
            plusone $(($var**2))
            array[$index]=$?
            index=$(($index+1))
        fi
    #echo ${array[@]}
    done
    # print all via while with \n
    while [ $index -gt 0 ]; 
    do
        echo ${array[$(($#-$index))]}
        index=$(($index-1))
    done
}

multiple_and_print 5 6 1 3 9