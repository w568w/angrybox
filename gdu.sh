#!/bin/bash

wget https://github.com/dundee/gdu/releases/download/v5.33.0/gdu_linux_amd64_static.tgz

tar -xzf gdu_linux_amd64_static.tgz
chmod +x gdu_linux_amd64_static

mv gdu_linux_amd64_static /io/outputs/gdu
rm gdu_linux_amd64_static.tgz