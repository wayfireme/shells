#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test
echo "trying to commit docker"
docker ps
docker stop $NAME
echo "docker stoped, sleeping for 37s"
docker ps
sleep 37
docker commit $CONTAINERID $REPO
sleep 7
docker push $REPO
sleep 7
echo "Wake up Neo!"
docker start $NAME
echo "all done, wait for about 2mins and check the service"
