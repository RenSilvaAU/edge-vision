#!/bin/bash
docker run --rm -d -p 1935:1935 --name rtsp-simple-server aler9/rtsp-simple-server 
ffmpeg -re -stream_loop -1 -i ms.mp4 -c copy -f flv rtmp://localhost:1935/live/stream
docker stop rtsp-simple-server