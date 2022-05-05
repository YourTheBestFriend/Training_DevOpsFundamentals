#!/bin/bash

# 1
if [[ $1 = $2  ]]; then
	echo 0
else
	echo 1
fi


# 2 
if [[ $1 > $2 ]]; then
	echo 0
else
	echo 1
fi

# 3
if [[ -n $TEST ]]; then 
	echo 0
else 
	echo 1
fi

# 4
if [[ $3 -ne $4  ]]; then
	echo 0
else 
	echo 1
fi

# 5
if [[ $3 -gt $4 ]]; then
	echo 0
else 
	echo 1
fi


