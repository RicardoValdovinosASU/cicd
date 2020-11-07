#!/usr/bin/env bash

sudo docker stop frontend-test
sudo docker rm frontend-test
sudo docker build -t frontend-test .
sudo docker run -p 8082:3000 -d --name=frontend-test frontend-test
