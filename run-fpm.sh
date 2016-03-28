#!/bin/bash
echo "Running Docker"
docker run  -v $(pwd):/data  -m 4096M -c 4096 ubuntu:14.04 /data/build-deb.sh
