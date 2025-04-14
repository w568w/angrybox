#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/zstd /zstd
cd /zstd

make --jobs zstd ZSTD_LEGACY_SUPPORT=1 HAVE_ZLIB=0 HAVE_LZMA=0 HAVE_LZ4=0 BACKTRACE=0

cp ./zstd /io/outputs/zstd