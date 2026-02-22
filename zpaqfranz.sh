#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/zpaqfranz /zpaqfranz
pushd /zpaqfranz

$CXX $CXXFLAGS $LDFLAGS $LTOFLAGS -stdlib=libc++ -static-libstdc++ -l:libc++abi.a -Dunix zpaqfranz.cpp -o zpaqfranz.out -pthread

cp ./zpaqfranz.out /io/outputs/zpaqfranz
popd