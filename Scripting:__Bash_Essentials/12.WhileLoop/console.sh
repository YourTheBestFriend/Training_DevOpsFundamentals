#!/bin/bash
while :
do
    echo -e '1 - ls ~\n2 - pwd\n3 - hi\n4 - exit'
    echo -en "Input: "
    read var && echo -e ''
    case $var in 
        1) ls ~ ;;
        2) pwd ;;
        3) echo -e "hi\nHello $USER" ;;
        4) exit ;; 
        *) continue ;;
    esac
done