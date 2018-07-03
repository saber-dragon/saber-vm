#!/bin/bash
set -e

GITHOME=/home/vagrant/GitHub

mkdir -p $GITHOME
git clone https://github.com/mininet/mininet.git $GITHOME/mininet
cd $GITHOME/mininet && util/install.sh
