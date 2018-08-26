#!/bin/bash
set -e

mkdir -p /usr/share/fonts
cp -R ./fonts/* /usr/share/fonts 

cp ./dotfiles/.zshrc /home/$USER/.zshrc

mkdir -p ~/.config/sublime-text-3/Packages/User
cp "./dotfiles/Packet Control.sublime-settings" ~/.config/sublime-text-3/Packages/User
cp ./dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

