#!/bin/bash
VIDEO=${1:-ms.mp4}
ffmpeg -re -stream_loop -1 -i "$VIDEO" -c copy -f flv rtmp://192.168.5.212:1935/output/stream