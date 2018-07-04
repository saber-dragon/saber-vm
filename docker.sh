#!/bin/bash

set -e 

apt-get update --fix-missing
apt-get install -y -q \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update --fix-missing
apt-get install -y -q docker-ce

# post install
# groupadd docker
MY_USER=vagrant
usermod -aG docker $MY_USER
mkdir -p /home/"$MY_USER"/.docker
chown "$MY_USER":"$MY_USER" /home/"$MY_USER"/.docker -R
chmod g+rwx "/home/$MY_USER/.docker" -R

# Start docker on boot
systemctl enable docker
