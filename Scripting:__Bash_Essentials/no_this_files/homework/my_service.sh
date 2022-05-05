#!/bin/bash

#echo 'input command: '
#read command

case ${1} in
	start) echo 'Service started' && sleep 9999 ;; 
	stop) echo 'Service stopped' && echo 'PID: ' $$ && kill $$ ;;
	restart) echo 'Service stopped' && echo 'PID: ' $$ && echo 'Service started' && sleep 9999 ;;
esac
