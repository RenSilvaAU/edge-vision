# Edge Vision
| Camera Utilities

This folder is part of the Edge-Vision project. The objective of this folder is to offer a few utilities for development in case you do not have access to a camera streaming RTSP or RTMP.

## Utilities

- **rtsp.sh**: Runs a dockerized RTSP-Simple-Server to create an RTSP/RTMP/HLS server running on your edge device.

- **pc-cam.sh**: Pipes your PC camera to the RTMP server. The AI model will use this as input. This script must run on the host itself (not in a container).
- **mac-cam.sh**: Pipes your Mac camera to the RTMP server. The AI model will use this input. This script must run on the host itself (not in a container).
- **loop.sh**: Loops `ms.mp4` video indefinitely and pipes it to the RTMP server. The model will use this endpoint. This script can run from inside a container.

## Pre-requisites

You must have `ffmpeg` installed on your PC or Mac. You can download it from [FFmpeg's official website](https://ffmpeg.org/download.html).

**Optionally**, you can use VLC media player to view streams. You can download it from [VLC's official website](https://www.videolan.org/vlc/).

## Author

Ren Silva  
Email: renato.silva@microsoft.com

## License
This project is licensed under the MIT License. See the [LICENSE](../../LICENSE) file for details.