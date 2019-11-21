#!/bin/bash
if docker rm -f vue > /dev/null 2>&1; then
   echo "success"
else
   echo "delete"  
fi
if docker rmi -f vue > /dev/null 2>&1; then
   echo "success"
else
   echo "delete"  
fi
# 
docker build -t vue .
docker run -dit --name=vue -p 31050:8080 vue