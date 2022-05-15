#!/bin/bash
cat /etc/passwd | grep /usr/bin/false # usermod --shell /bin/bash name_user

mkdir Matthew_Goncharov && touch Matthew_Goncharov/my_file && echo 'Hello' >> Matthew_Goncharov/my_file && cat Matthew_Goncharov/my_file && exit 0 || echo 'Something went wrong' && exit 1