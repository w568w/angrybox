#!/bin/bash

wget https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_linux_amd64.deb

apk add dpkg

mkdir --parents /duf
dpkg-deb --extract duf_0.8.1_linux_amd64.deb /duf

cp /duf/usr/bin/duf /io/outputs/duf