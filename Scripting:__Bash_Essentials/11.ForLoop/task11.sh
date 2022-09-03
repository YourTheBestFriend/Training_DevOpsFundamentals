#!/bin/bash
touch script.sh && chmod +x script.sh
echo -e 'sum=0 \nfor i in $@; do sum=$(($sum+$i)); done\necho "Sum:$sum" \necho "Args number: $#" \necho "Result: $(($sum / $#))" ' >> script.sh
bash script.sh 1 2 3 4 5