#!/bin/bash

# This script continuously streams a video file to an RTMP server.
# Usage: ./loop.sh [VIDEO]
# If no video file is specified, it defaults to 'ms.mp4'.
#
# Arguments:
#   VIDEO - The path to the video file to be streamed (optional).
#
# The script uses ffmpeg to:
#   - Read the specified video file in real-time.
#   - Loop the video indefinitely.
#   - Copy the video and audio streams without re-encoding.
#   - Stream the video to an RTMP server at rtmp://localhost:1935/live/stream.

VIDEO=${1:-ms.mp4}
ffmpeg -re -stream_loop -1 -i "$VIDEO" -c copy -f flv rtmp://localhost:1935/live/stream