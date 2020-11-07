#!/usr/bin/env bash

sudo docker stop cicd-backend-test
./mvnw package #&& java -jar target/test-0.0.1-SNAPSHOT.jar # The command after the && runs the jar file
sudo docker rm cicd-backend-test
sudo docker build -t cicd-backend-test .
sudo docker run -p 8081:8080 -d --name=cicd-backend-test cicd-backend-test:latest
