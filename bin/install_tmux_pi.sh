#!/bin/bash
set -xe

TMUX_VERSION="2.3"

sudo apt-get install -y exuberant-ctags cmake libevent-dev libncurses5-dev

mkdir /tmp/build_tmux
pushd /tmp/build_tmux

wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz

tar -zxvf tmux-${TMUX_VERSION}.tar.gz
pushd tmux-${TMUX_VERSION}
./configure --prefix=/usr/local
make
sudo make install
popd
popd
echo "Done!"
