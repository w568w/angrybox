#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/zpaqfranz /zpaqfranz
pushd /zpaqfranz

# musl libc defaults to 128KB thread stacks, which is too small for
# compressBlock's ~111KB Compressor object. Patch to use 8MB stacks.
sed -i 's/pthread_create(\&tid, NULL, f, arg)/pthread_attr_t attr; pthread_attr_init(\&attr); pthread_attr_setstacksize(\&attr, 8<<20); pthread_create(\&tid, \&attr, f, arg); pthread_attr_destroy(\&attr)/' zpaqfranz.cpp

$CXX $CXXFLAGS $LDFLAGS $LTOFLAGS -stdlib=libc++ -static-libstdc++ -l:libc++abi.a -Dunix zpaqfranz.cpp -o zpaqfranz.out -pthread

cp ./zpaqfranz.out /io/outputs/zpaqfranz
popd