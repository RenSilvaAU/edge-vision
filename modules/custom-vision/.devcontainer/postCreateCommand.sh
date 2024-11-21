#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
# Install Bash Kernel for notebooks
# check if pip is installed, if not, install it
if ! command -v pip &> /dev/null
then
    echo "pip not found, installing..."
    sudo apt-get update
    sudo apt-get install -y pip
else
    echo "pip is already installed."
fi

# check if python is installed, if not, install it
if ! command -v python &> /dev/null
then
    echo "python not found, installing..."
    sudo apt-get update
    sudo apt-get install -y python
else
    echo "python is already installed."
fi

pip install -r requirements.txt

pip install azure-cognitiveservices-vision-customvision
pip install python-dotenv
pip install msrest
