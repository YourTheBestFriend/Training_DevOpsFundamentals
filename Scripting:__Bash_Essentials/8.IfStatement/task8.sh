#!/bin/bash
touch odd_even.sh
chmod +x odd_even.sh
echo -e "if [ \$1 = 'odd' ]; then\n echo 'Odd'\nelse\n echo 'Even'\nfi " >> odd_even.sh
bash odd_even.sh odd
bash odd_even.sh even

echo '________________'

touch my_script.sh
chmod +x my_script.sh
echo -e "if [ \$# -lt 2 ]; then\n echo "\$1"\nelif [ \$# -gt 2 ] && [ \$# -lt 4 ]; then\n echo "\$3"\nelse\n  echo 'Invalid number of arguments'\nfi" >> my_script.sh

bash my_script.sh hello
bash my_script.sh hello world
bash my_script.sh pie is lie
bash my_script.sh keep calm and procrastinate