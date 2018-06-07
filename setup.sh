#!/bin/bash
set -e 

apt-get update --fix-missing
apt-get install -q -y build-essential cmake curl wget git zsh python python-dev python-pip vim clang-format ruby ruby-dev
apt-get install -q -y npm nodejs-legacy
apt-get install -q -y python3 python3-pip python3-dev
gem install colorls
pip3 install --upgrade pip
pip install --upgrade pip
pip install matplotlib sklearn pandas click numpy scipy yapf 
python3 -m pip install matplotlib sklearn pandas click numpy scipy yapf
npm install -g configurable-http-proxy
python3 -m pip install jupyterhub 

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install -q -y sublime-text


echo "Install fonts"
mkdir -p /usr/share/fonts
mkdir -p /home/vagrant/fonts
wget "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf" -P /home/vagrant/fonts

cp /srv/fonts/* /usr/share/fonts
cp /home/vagrant/fonts/* /usr/share/fonts
rm -rf /home/vagrant/fonts


echo "vagrant ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

