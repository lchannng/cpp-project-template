#!/bin/sh
# File Name: build_win_x64.sh
# Author: Stan.Lch
# mail: fn.stanc@gmail.com
# Created Time: 2018/10/29 11:10:11

install_dir="`pwd`/_install"

mkdir -p ./_build
cd ./_build
cmake -Wno-dev -A x64 -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=${install_dir} ..
