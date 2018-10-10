#!/bin/bash

NAME=$1
CONTAINERID=$2
REPO=$3
TAG=test

echo "trying to gracefull reboot.."
docker stop $NAME && sleep 37 && sudo reboot
