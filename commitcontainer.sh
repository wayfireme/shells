#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test

echo "trying to commit container"
docker ps
docker stop $NAME
echo "docker stoped, sleeping for 37s"
docker ps
sleep 7
docker commit $CONTAINERID $REPO
sleep 7
docker push $REPO
sleep 3
echo "Wake up Neo!"
docker start $NAME
echo "all done, wait for about 2mins and check container"
sleep 7
docker ps
