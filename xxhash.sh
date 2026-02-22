#!/bin/bash
set -e
export ANGRYBOX_OPT_LEVEL="-O3"
source /io/activate
set -x

cp --recursive /io/xxHash /xxHash
pushd /xxHash

# DISPATCH=1: explicitly requires dispatch among scalar, SSE2, AVX2, and AVX-512 implementations
# 
make xxhsum --jobs DISPATCH=1

cp ./xxhsum /io/outputs/xxhsum
popd