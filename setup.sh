#!/bin/bash
set -e 

apt-get update --fix-missing
<<<<<<< HEAD
apt-get install -q -y build-essential cmake \
curl wget git zsh python python-dev python-pip \
vim clang-format ruby ruby-dev \
autoconf libtool pkg-config libgflags-dev libgtest-dev \
clang libc++-dev
apt-get install -q -y npm libgtk2.0
# apt-get install -q -y python3 python3-pip python3-dev
gem install colorls
# pip3 install --upgrade pip
# pip install --upgrade pip
pip install matplotlib sklearn pandas click numpy scipy yapf 
# python3 -m pip install matplotlib sklearn pandas click numpy scipy yapf
npm install -g configurable-http-proxy
# python3 -m pip install jupyterhub 
=======
apt-get install -q -y build-essential cmake curl\
 wget git zsh python python-dev python-pip vim \
 clang-format ruby ruby-dev gdbserver libgtk2.0
apt-get install -q -y npm 

gem install colorls

pip install matplotlib sklearn pandas click numpy scipy yapf psutil

npm install -g configurable-http-proxy

>>>>>>> 8170be639f674fe5add8c0d07dd0c3c48ea33993

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install -q -y sublime-text


echo "Install fonts"
mkdir -p /usr/share/fonts
wget "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf" -P /usr/share/fonts

rm -rf /home/vagrant/fonts

echo "vagrant ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

