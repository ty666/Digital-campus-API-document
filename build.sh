#!/usr/bin/env sh

docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)
docker-compose build
docker-compose up -d