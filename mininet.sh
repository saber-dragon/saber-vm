#!/bin/bash
set -e

GITHOME=/home/vagrant/GitHub
apt-get install -q -y  mininet

mkdir -p $GITHOME
git clone https://github.com/noxrepo/pox.git $GITHOME/pox
git clone https://github.com/mininet/mininet.git $GITHOME/mininet

apt-get install -q -y openjdk-8-jdk ant maven python-dev
git clone https://github.com/floodlight/floodlight.git $GITHOME/floodlight
cd $GITHOME/floodlight 
git submodule init 
git submodule update 
ant 

mkdir /var/lib/floodlight 
chmod 777 /var/lib/floodlight