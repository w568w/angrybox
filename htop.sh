#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/htop /htop
pushd /htop

apk add --no-cache ncurses-dev ncurses-static

./autogen.sh
./configure --enable-affinity --enable-static
make --jobs

cp ./htop /io/outputs/htop

popd