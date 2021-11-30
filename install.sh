#!/bin/bash

pacman -S --noconfirm distcc

mkdir -p ~/git/cross/src
cd ~/git/cross
git clone https://github.com/crosstool-ng/crosstool-ng.git
cd crosstool-ng
./bootstrap
./configure --prefix=~/git/cross
make
make install
