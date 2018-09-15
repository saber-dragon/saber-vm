#!/bin/bash
set -e 

cd /tmp
git clone https://github.com/google/benchmark.git
git clone https://github.com/google/googletest.git benchmark/googletest
mkdir build && cd build
cmake ../benchmark -DCMAKE_BUILD_TYPE=RELEASE
make && sudo make install