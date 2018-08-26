#!/bin/bash
set -e

cd /tmp
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -zxvf install-tl-unx.tar.gz
cd install-tl-unx
perl ./install-tl 

wget http://mirrors.ctan.org/support/texliveonfly/texliveonfly.py
sudo mv ./texliveonfly.py /usr/bin