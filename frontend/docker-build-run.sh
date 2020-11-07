#!/usr/bin/env bash

docker stop frontend-test
docker rm frontend-test
docker build -t frontend-test .
docker run -p 8082:3000 -d --name=frontend-test frontend-test
