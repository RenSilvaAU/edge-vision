#!/bin/bash
ffmpeg -f dshow -framerate 30 -rtbufsize 100M -i video="Microsoft Camera Front" -c:v libx264 -c:a aac -f flv rtmp://localhost:1935/live/stream