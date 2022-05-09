#!/bin/bash
echo 'FILE="new_file"' >> vars
echo 'NAME="Matthew_Goncharov"' >> script.sh && echo 'source vars'>> script.sh
echo 'mkdir $NAME' >> script.sh && echo 'touch $NAME/$FILE' >> script.sh && echo 'ls && ls $NAME/' >> script.sh
chmod +x script.sh
bash script.sh