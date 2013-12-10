#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git-core

# git pull and install dotfiles as well
cd $HOME
git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
ln -sb .dotfiles/.screenrc .
ln -sb .dotfiles/.bash_profile .
ln -sb .dotfiles/.bashrc .
ln -sb .dotfiles/.bashrc_custom .

# git pull and install vim setup
git clone https://github.com/DavidWinterbottom/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
cd -

# heroku setup
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Install compass
gem update --system
gem install compass
