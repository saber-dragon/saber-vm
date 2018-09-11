#!/bin/bash
set -e

sudo apt-get install -y -q  libopenblas-dev liblapack-dev libarpack2-dev
cd /tmp
wget http://sourceforge.net/projects/arma/files/armadillo-9.100.5.tar.xz
tar xf armadillo-9.100.5.tar.xz
cd armadillo-9.100.5
./configure && make && sudo make 
