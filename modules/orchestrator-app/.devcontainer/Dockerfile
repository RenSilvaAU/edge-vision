FROM python:3.12-slim

RUN pip install -U pip
COPY requirements.txt .

RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 dnsutils -y