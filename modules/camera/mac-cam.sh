#!/bin/bash
ffmpeg -f avfoundation -framerate 30 -rtbufsize 100M -pixel_format uyvy422 -video_size 1280x720 -i "0" -c:v h264_videotoolbox -c:a aac -f flv rtmp://localhost:1935/live/stream