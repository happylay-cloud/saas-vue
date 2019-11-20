#!/bin/bash
docker rmi -f vue > /dev/null 2>&1
docker rm -f vue > /dev/null 2>&1
docker build -f Dockerfile -t vue .
docker run -dit --name=vue -p 31050:8080 vue