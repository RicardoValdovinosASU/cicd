#!/usr/bin/env bash

sudo docker stop cicd-frontend-jenkins
sudo docker rm cicd-frontend-jenkins
sudo docker build -t cicd-frontend-test .
sudo docker run -p 8082:3000 -d --name=cicd-frontend-test cicd-frontend-test
