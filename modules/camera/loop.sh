#!/bin/bash
VIDEO=${1:-ms.mp4}
ffmpeg -re -stream_loop -1 -i "$VIDEO" -c copy -f flv rtmp://localhost:1935/live/stream