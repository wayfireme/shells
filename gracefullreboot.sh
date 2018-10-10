#!/bin/bash

NAME=$1
CMND=$2
CONTAINERID=$3
REPO=$3
TAG=test

echo "
docker stop $NAME && sleep 37 && sudo $2
