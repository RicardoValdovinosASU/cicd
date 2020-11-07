#!/usr/bin/env bash

docker stop spring-boot-test
./mvnw package #&& java -jar target/test-0.0.1-SNAPSHOT.jar # The command after the && runs the jar file
docker rm spring-boot-test
docker build -t backend-spring-boot-test .
docker run -p 8081:8080 -d --name=spring-boot-test backend-spring-boot-test:latest
