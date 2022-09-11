#!/bin/bash
touch my_script.sh # create file
echo '#!/bin/bash' >> my_script.sh
echo 'echo "$0"' >> my_script.sh
echo 'echo "$*"' >> my_script.sh
echo 'echo "$#"' >> my_script.sh
echo 'echo "$2 $4"' >> my_script.sh
echo -e '[[ $1 -eq $2 ]]\necho "exit code = $?"' >> my_script.sh
chmod +x my_script.sh # make executable

echo 'First Output:'
bash my_script.sh 1 2 hello world
echo -e '\nSecond Output:'
bash my_script.sh 2 2 hello world

