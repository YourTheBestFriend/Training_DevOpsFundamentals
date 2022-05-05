#!/bin/bash

if [ $# -lt 2 ]; then
	echo $*
elif [ $# -gt 2 ] && [ $# -lt 4 ]; then
	a=$*
	echo $a 

else
	echo "Invalid number of arguments"
fi
