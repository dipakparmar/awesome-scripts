#! /bin/bash

echo "Stoping all docker containers..."

docker container stop $(docker container ls -aq)

echo "removing all docker containers..."

docker container rm $(docker container ls -aq)

echo "cleaning docker system..."

docker system prune -f

echo "cleaning all docker unused images..."

docker image prune -f

echo "cleaning all docker unused volumes..."

docker volume prune -f

echo "cleaning all docker unused network..."

docker network prune -f