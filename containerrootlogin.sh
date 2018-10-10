#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test

echo "Trying to root.."
docker exec --user root -it $1 /bin/bash
