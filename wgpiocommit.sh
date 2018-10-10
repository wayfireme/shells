#!/bin/bash
echo "trying to commit airdocker from gpioairqwetrack"
docker ps
docker stop gpioairqwetrack #airqwetrack
echo "air docker stoped, sleeping for 37s"
docker ps
sleep 37
docker commit 4f2129ab14a3 docker.wetrack.pro:5000/airq-node-red-arm32v7rpi-wgpio:latest #581682a656e8 docker.wetrack.pro:5000/airq-node-red-arm32v7rpi:latest
sleep 7
docker push docker.wetrack.pro:5000/airq-node-red-arm32v7rpi-wgpio:latest #docker.wetrack.pro:5000/airq-node-red-arm32v7rpi:latest
sleep 7
echo "Wake up Neo!"
docker start gpioairqwetrack #airqwetrack
echo "all done, wait for about 2mins and check airq.wetrack.pro"
