# Edge Vision

This repository contains the basic building blocks of a fully-functioning end-to-end vision on the edge solution.

> The focus of this repository is to demonstrate how to build each block and how to integrate them in a real edge device.
> 
> For that reason, we have deliberately not included continuous integration, monitoring, or MLOps functions.

## Solution Summary

Edge Vision provides a modular approach to building vision solutions on edge devices. Each module is designed to handle a specific part of the process, from capturing images to processing and displaying results.

![model](./pics/model.png)

## Ready to run Modules

The modules below run a pre-built end-to-end object detection solution. 

### 1. Camera Emulation:

> This folder contains utilities to create an RTMP stream that emulates a camera running in your device.
> 
> If you already have an RTSP/RTMP camera streaming, you can skip this step.

***NB ->*** This particular module must run from the host, not from a devcontainer

1. First you need to start the **media broker application** (we are using `rtsp-simple-server`).

    From the module folder, run:

    ```bash
    ./rtsp.sh
    ```

2. Then you need to stream a video to that RTMP server.
    
    You have the following options:

    To run an infinite loop of a pre-recorded video, from the module folder run:

    ```bash
    ./loop.sh # this works for Macs, PCs, or Linux
    ```

    To send a live stream from your Windows PC camera, from the module folder run:

    ```bash
    ./pc-cam.sh # please select the source camera, when presented with the camera list
    ```

    To send a live stream from your Mac camera, from the module folder run:

    ```
    ./mac-cam.sh 
    ```
To learn more, go to [Read more](./modules/camera-emulation/README.md)

### 2. AI Model

This module contains a pre-trained model that can detect coffee cups. It was trained with Custom Vision. 

If you are using this module, open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer. [Read more](./modules/camera-emulation/README.md) 

If you prefer to build your own model, please refer to [Model Training](#1-model-training).

### 3. Orchestrator App

This module contains an application that subscribes to the RTMP stream, interacts with the AI model to detect the object and streams the result back to the RTSP/RTMP server.

To run it in real time, open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer. [Read more](./modules/orchestrator-app#readme)

### 4. Player App

This module contains a web application that displays, in real-time, the original stream and the stream after AI.

To run it, open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer. [Read more](./modules/player-app/README.md)

## Learning Modules

The modules below exist to help you experiment with the basic concepts of Vision on the edge.

### 1. Model Training 

If you would like to train a new model, you can go to:

#### Custom Vision

Demonstrates how to ingest data into Azure Custom Vision. 

To use it, open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer. [Read more](./modules/custom-vision/README.md)

#### Auto ML for Images

Demonstrates how to ingest data into Azure Machine Learning (it requires a subscription), and train an object detection model using Azure Machine Learning for Images. 

To use it open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer.
[Read more](./modules/auto-ml-for-images/README.md)

### 2. Orchestrator Building Blocks

Illustrates the basic concepts of:

- Subscribing to an RTSP/RTMP stream
- Displaying training and detection data
- Interacting with a running AI model

Core components for orchestrating the workflow between different modules. 

To use it, open the module folder in a new VS Code session, and ensure that you reopen in Devcontainer. [Read more](./modules/orchestrator-building-blocks/README.md)


## Please Notice

This is a public repository. You are welcome to submit your suggestions and issues. 

## Author

Ren Silva  
Email: renato.silva@microsoft.com

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.