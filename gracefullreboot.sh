#!/bin/bash

NAME=${13}
CMND=$1
CONTAINERID=$2
REPO=$3
TAG=test

echo "trying to stop container"
docker stop $NAME && sleep 37 && sudo $1
