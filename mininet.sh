#!/bin/bash
set -e

GITHOME=/home/vagrant/GitHub

mkdir -p $GITHOME

echo "Cloning mininet"
git clone https://github.com/mininet/mininet.git $GITHOME/mininet

cd $GITHOME/mininet
echo "Adapting the install script"
sed -i 's/iproute /iproute2 /g' ./util/install.sh

echo "Install mininet toolkits"
./util/install.sh 

