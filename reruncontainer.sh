#!/bin/bash

NAME=${12}
CONTAINERID=$1
REPO=$2
TAG=test

docker ps
echo "trying to rerun docker container"
docker stop $NAME
echo "docker stoped, sleeping for 37s"
sleep 37
echo "Wake up Neo!"
docker start $NAME
echo "all done, wait for about 2mins and check the service"
sleep 7
docker ps
