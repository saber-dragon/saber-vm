#!/bin/bash
set -e

cd /tmp
wget http://lemon.cs.elte.hu/pub/sources/lemon-1.3.1.tar.gz
tar -zxvf lemon-1.3.1.tar.gz
cd lemon-1.3.1
mkdir build && cd build 
cmake ..
make && sudo make install
