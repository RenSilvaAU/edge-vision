#!/bin/bash

# This script uses ffmpeg to capture video from the default Mac camera (avfoundation) and stream it to an RTMP server.
# 
# This script captures video from the default Mac camera and streams it to an RTMP server.
# Usage: ./mac-cam.sh
#
# The script uses ffmpeg to stream the video and audio to an RTMP server at rtmp://localhost:1935/live/stream.

ffmpeg -f avfoundation -framerate 30 -rtbufsize 100M -pixel_format uyvy422 -video_size 640x480 -i "0" -c:v h264_videotoolbox -b:v 1000k -max_delay 0 -preset ultrafast -c:a aac -f flv rtmp://localhost:1935/live/stream