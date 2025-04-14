#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/fastfetch /fastfetch
pushd /fastfetch

mkdir --parents build
pushd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . --target fastfetch


cp ./fastfetch /io/outputs/fastfetch
popd