#!/bin/bash

set -e

echo "Install Oh My ZSH"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo -e "set nu\nset paste" >>~/.vim_runtime/my_configs.vim
git clone https://github.com/mindriot101/vim-yapf.git ~/.vim_runtime/my_plugins/vim-yapf
git clone https://github.com/rhysd/vim-clang-format.git ~/.vim_runtime/my_plugins/vim-clang-format

echo "Configure sublime text 3"
curl -O -L "https://packagecontrol.io/Package%20Control.sublime-package" 
mkdir -p "~/.config/sublime-text-3/Installed Packages"
mv "Package%20Control.sublime-package" "~/.config/sublime-text-3/Installed Packages/Package Control.sublime-package"


echo "Generate some SSH keys"
ssh-keygen -b 4096 -t rsa -f ~/.ssh/githubA -q -N ""
ssh-keygen -b 4096 -t rsa -f ~/.ssh/githubB -q -N ""
ssh-keygen -b 4096 -t rsa -f ~/.ssh/serverA -q -N ""
ssh-keygen -b 4096 -t rsa -f ~/.ssh/serverB -q -N ""
