#!/bin/bash

set -e 

echo "Install fonts"
cp /home/vagrant/fonts/* /usr/share/fonts
rm -rf /home/vagrant/fonts

echo "Change the owner of ~"