FROM node:latest

RUN apt-get update && apt-get install -y libopencv-dev

WORKDIR /app

ENV OPENCV4NODEJS_DISABLE_AUTOBUILD=1 OPENCV_INCLUDE_DIR=/usr/include/opencv4 OPENCV_LIB_DIR=/usr/lib/x86_64-linux-gnu OPENCV_BIN_DIR=/usr/bin

RUN npm init -y && npm install @u4/opencv4nodejs

