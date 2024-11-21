#!/bin/bash

# This script runs a Docker container for the RTSP Simple Server.
# It maps the following ports from the host to the container:
# - 1935: RTMP port
# - 8554: RTSP port
# - 8888: HTTP port
# The container is removed after it stops (--rm).

# It runs interactively with a terminal attached (-it).

docker run --rm -it -p 1935:1935 -p 8554:8554 -p 8888:8888 --name rtsp-simple-server aler9/rtsp-simple-server 