#!/bin/bash
docker run --rm -d -p 1935:1935 --name rtsp-simple-server aler9/rtsp-simple-server 
ffmpeg -f avfoundation -framerate 30 -pixel_format uyvy422 -video_size 1280x720 -i "0" -c:v h264_videotoolbox -c:a aac -f flv rtmp://localhost:1935/live/stream
docker stop rtsp-simple-server