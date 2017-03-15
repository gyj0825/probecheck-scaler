#!/bin/bash
host=`cat /etc/hostname`
http_code=`curl -s -w '%{http_code}' -o /dev/null "http://${host}:8080/echo-web-0.0.1-SNAPSHOT/"`
if [ "$http_code" == "200" ];then
   echo "app is healthy"
   exit 0
else
   echo "app is unhealthy"
   exit 1
fi
