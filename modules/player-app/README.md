# Edge Vision
| Player App

This folder contains a sample React application, running two HLS servers:

- The original stream
- After AI model stream

It helps the developers visualize the results of applying AI inferencing to incoming video streams.

## DevContainer

This folder works with its own DevContainer. 

To use this folder with its DevContainer, follow these steps:

1. **Install Docker**: Ensure you have Docker installed on your machine. You can download it from [Docker's official website](https://www.docker.com/products/docker-desktop).

2. **Install Visual Studio Code**: Make sure you have Visual Studio Code installed. You can download it from [Visual Studio Code's official website](https://code.visualstudio.com/).

3. **Install Remote - Containers Extension**: In Visual Studio Code, install the "Remote - Containers" extension from the Extensions view (`Ctrl+Shift+X`).

4. **Open the Folder in a DevContainer**:
    - Open Visual Studio Code.
    - Navigate to the folder `/Users/rensilva/projects/current/edge-vision/modules/auto-ml-for-images`.
    - Press `F1` and select `Remote-Containers: Open Folder in Container...`.
    - Select the folder and wait for the container to build and start.

For more information on how to use DevContainers, please refer to the [DevContainers documentation](https://code.visualstudio.com/docs/remote/containers).

## Author

Ren Silva  
Email: renato.silva@microsoft.com

## License
This project is licensed under the MIT License. See the [LICENSE](../../LICENSE) file for details.