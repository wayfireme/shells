#!/bin/bash

NAME=${12}
CONTAINERID=$1
REPO=$2
TAG=test
echo "trying to root container"
docker exec --user root -it $NAME /bin/bash
