#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test

echo "trying to rerun docker"
docker stop $NAME
echo "docker stoped, sleeping for 37s"
sleep 37
echo "Wake up Neo!"
docker start $NAME
echo "all done, wait for about 2mins and check the system"
