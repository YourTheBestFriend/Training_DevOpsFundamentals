#!/bin/bash
mkdir homework
touch homework/file1
cp homework/file1 homework/file2
echo 'echo 'Hello World!'' >> homework/file2
chmod +x homework/file2
bash homework/file2
