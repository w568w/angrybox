#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/nethogs /nethogs
cd /nethogs

apk add --no-cache libpcap-dev ncurses-dev ncurses-static

make --jobs

cp ./src/nethogs /io/outputs/nethogs