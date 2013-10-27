#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git-core
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# git pull and install dotfiles as well
cd $HOME
git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
ln -sb .dotfiles/.screenrc .
ln -sb .dotfiles/.bash_profile .
ln -sb .dotfiles/.bashrc .
ln -sb .dotfiles/.bashrc_custom .
ln -sf .dotfiles/.emacs.d .

# git pull and install vim setup
git clone https://github.com/DavidWinterbottom/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
cd -

# heroku setup
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
