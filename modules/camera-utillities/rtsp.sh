#!/bin/bash
docker run --rm -it -p 1935:1935 -p 8554:8554 -p 8888:8888 --name rtsp-simple-server aler9/rtsp-simple-server 