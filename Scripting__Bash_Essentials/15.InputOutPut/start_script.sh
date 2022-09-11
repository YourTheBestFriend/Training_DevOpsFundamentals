#!/bin/bash
# Почему не отображается Input FileName ?, - изходя из этого я понял почему не записывает d stderr
### echo 'Task Finished' > /dev/null 2>&1 - оно и не сможет записат т.к echo не работает :?
bash script.sh 2> stderr 1> output  

echo '___run cat output:'
cat output

echo -e "\n___run cat stderr:"
cat stderr
