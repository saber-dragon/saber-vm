#!/bin/bash
set -e

cd /tmp
wget http://ftp.gnu.org/gnu/glpk/glpk-4.65.tar.gz
tar -zxvf glpk-4.65.tar.gz
cd glpk-4.65
./configure --disable-shared
make && sudo make install