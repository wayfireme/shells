#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test
echo "trying to root container"
docker exec --user root -it $NAME /bin/bash
