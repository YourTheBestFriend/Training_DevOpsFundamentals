#!/bin/bash
case $1 in 
    start) echo "Service started" && sleep 9999 ;;
    stop) echo "$$" && kill -9 $$ && echo "Service stopped" ;;
    restart) kill -9 $$ && bash my_service.sh start ;;
    help) echo "usage: my_service.sh [start|stop|restart]" ;;
    *) export PATH=$PATH:pwd ;;
esac