#!/bin/bash
set -e 

apt-get update --fix-missing
apt-get install -q -y build-essential cmake curl\
 wget git zsh python python-dev python-pip vim \
 clang-format clang ruby ruby-dev gdbserver libgtk2.0

echo "Install network tools"
apt-get install -y -q net-tools iputils-ping tcpdump
apt-get install -q -y npm 

gem install colorls

pip install matplotlib sklearn pandas click numpy scipy yapf psutil

npm install -g configurable-http-proxy


wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update --fix-missing
apt-get install -q -y sublime-text


echo "Install fonts"
mkdir -p /usr/share/fonts
wget "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf" -P /usr/share/fonts

rm -rf /home/vagrant/fonts

echo "vagrant ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

