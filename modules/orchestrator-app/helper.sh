#!/bin/bash

run_docker() {
    # check if rtsp-server is already running using docker if it is then remove it
    if [ "$(docker ps -a -q -f name=rtsp-server)" ]; then
        docker stop rtsp-server
        docker rm rtsp-server
    fi

    # build the docker image
    docker run -it --name rtsp-server -p 1935:1935 aler9/rtsp-simple-server
}

ffmpeg_stream() {
    VIDEO=${1:-ms.mp4}
    ffmpeg -re -stream_loop -1 -i "$VIDEO" -c copy -f flv rtmp://localhost:1935/output/stream
}