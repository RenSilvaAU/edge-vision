#!/bin/bash

# This script streams video from a selected device to an RTMP server.
# Usage: ./pc-cam.sh [DEVICE_NUMBER]
# DEVICE_NUMBER should be an integer representing the index of the device in the device list.
#
# Arguments:
#   DEVICE_NUMBER - The index of the video device to be used for streaming (required).
#
# The script performs the following actions:
#   - Validates the provided device number to ensure it is within the valid range.
#   - Retrieves the name of the selected video device based on the provided index.
#   - Uses ffmpeg to:
#     - Capture video from the selected device at 30 frames per second.
#     - Set the buffer size to 100M.
#     - Reduce the resolution to 640x480.
#     - Encode the video using the libx264 codec with the ultrafast preset.
#     - Encode the audio using the aac codec.
#     - Stream the video to an RTMP server at rtmp://localhost:1935/live/stream.

# List available devices and capture the output
devices=$(ffmpeg -list_devices true -f dshow -i dummy 2>&1)

# Extract device names and display them with numbers
device_list=()
index=1
while IFS= read -r line; do
    if [[ $line == *"DirectShow video devices"* ]]; then
        continue
    fi
    device_name=$(echo "$line" | sed -n 's/.*"\(.*\)".*/\1/p')
    if [ -n "$device_name" ]; then
        device_list+=("$device_name")
        echo "$index: $device_name"
        ((index++))
    fi
done <<< "$devices"

# Prompt user to enter the device number
echo "Enter the number of the video device:"
read device_number

# Validate the input

if [[ $device_number -lt 1 || $device_number -gt ${#device_list[@]} ]]; then
    echo "Invalid device number"
    exit 1
fi

# Get the selected device name
video_device=${device_list[$((device_number-1))]}

# Start streaming using the selected device with reduced resolution and ultrafast preset
ffmpeg -f dshow -framerate 30 -rtbufsize 100M -i video="$video_device" -s 640x480 -c:v libx264 -preset ultrafast -c:a aac -f flv rtmp://localhost:1935/live/stream