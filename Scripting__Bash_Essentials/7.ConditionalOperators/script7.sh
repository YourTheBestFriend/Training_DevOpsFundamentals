#!/bin/bash
# export TEST="123"
# checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
[[ $1 = $2 ]]
echo "$?"
# checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
[[ $1 > $2 ]]
echo "$?"
# checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
[[ -n $TEST ]] # Why 1 ??? In my view must be 0 and script output 0, after export TEST="123"
echo "$?"
# checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
[[ $3 -ne $4 ]]
echo "$?"
# checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
[[ $3 -ge $4 ]]
echo "$?"