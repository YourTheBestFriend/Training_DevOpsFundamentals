#!/bin/bash

echo 'Input num:'

read num

#mkdir $dirname

FOO=100
echo $(($FOO + $num))

array=("apple" "banaba")

echo 'array[0] = '${array[0]}
echo 'array[1] = '${array[1]}


echo 'all: '${array[@]}
echo 'all: '${#array[@]}

#${array[@]/"apple"/500}
unset array[1]
echo 'all: '${array[@]}

source variables.txt ${array[@]}
