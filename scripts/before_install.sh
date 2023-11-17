#!/bin/bash

var=$(ps -ef|grep python3|grep -v 'grep')
pid=$(echo ${var} | cut -d " " -f2)
 
if [ -n "${pid}" ]
then
    kill -9 ${pid}
    echo $* is terminated.
 
else
    echo $* is not running.
fi

rm -rf /home/ubuntu/hello-flask
mkdir  /home/ubuntu/hello-flask