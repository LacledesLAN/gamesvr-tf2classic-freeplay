#!/bin/bash
set -e

docker pull lacledeslan/gamesvr-tf2classic:latest

echo -e '\n\033[1m[Build tf2-freeplay]\033[0m'
docker build . -f linux.Dockerfile --rm -t lacledeslan/gamesvr-tf2classic-freeplay:latest --build-arg BUILDNODE="$(cat /proc/sys/kernel/hostname)";
docker run -it --rm lacledeslan/gamesvr-tf2classic-freeplay:latest ./ll-tests/gamesvr-tf2classic-freeplay.sh;
docker push lacledeslan/gamesvr-tf2classic-freeplay:latest
