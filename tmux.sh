#!/bin/bash
set -e
source /io/activate
set -x

cp --recursive /io/tmux /tmux
pushd /tmux

apk add --no-cache libevent-dev libevent-static ncurses-dev ncurses-static bison

./autogen.sh
./configure --enable-static --disable-utf8proc
make --jobs

cp ./tmux /io/outputs/tmux

popd
