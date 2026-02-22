#!/bin/bash

wget https://github.com/rclone/rclone/releases/download/v1.73.1/rclone-v1.73.1-linux-amd64.zip

unzip rclone-v1.73.1-linux-amd64.zip
chmod +x rclone-v1.73.1-linux-amd64/rclone

mv rclone-v1.73.1-linux-amd64/rclone /io/outputs/rclone
rm -rf rclone-v1.73.1-linux-amd64 rclone-v1.73.1-linux-amd64.zip
