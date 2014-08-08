#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

if [[ `uname` == "MINGW32_NT-6.2" ]]; then
  echo "setting environment for Windows 8"
elif [[ `uname` == "MINGW32_NT-6.1" ]]; then
  echo "setting environment for Windows 7"
elif [[ `uname` == "Linux" ]]; then
  echo "setting environment for Linux"
elif [[ `uname` == "Darwin" ]]; then
  echo "setting environment for Mac"
else
  echo "unknown environment `uname`"
fi

if [[ `uname` == "MINGW32_NT-6.2" || `uname` == "MINGW32_NT-6.1" ]]; then

  # git pull and install dotfiles as well
  cd $HOME
  git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
  cp .dotfiles/.screenrc .
  cp .dotfiles/.bash_profile .
  cp .dotfiles/.bashrc .
  cp .dotfiles/.bashrc_custom .
  cp .dotfiles/.gitconfig .
  cp .dotfiles/.npmrc .
  cp .dotfiles/.inputrc .
  cp .dotfiles/.ctags .

  # copy over the bin directory
  cp -r .dotfiles/bin .

  # copy over the conEum settings file
  cp .dotfiles/ConEmu.xml /c/local/tools/ConEmu

  # git pull and install vim setup
  git clone https://github.com/DavidWinterbottom/dotvim.git vimfiles
  cd ~/vimfiles

elif [[ `uname` == "Linux" || `uname` == "Darwin" ]]; then
  echo "setting environment for " `uname`

  # git pull and install dotfiles as well
  cd $HOME
  git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
  ln -s .dotfiles/.screenrc .
  ln -s .dotfiles/.bash_profile .
  ln -s .dotfiles/.bashrc .
  ln -s .dotfiles/.bashrc_custom .
  ln -s .dotfiles/.gitconfig .
  ln -s .dotfiles/.npmrc .
  ln -s .dotfiles/.inputrc .
  ln -s .dotfiles/.ctags .

  # link the bin directory
  ln -s .dotfiles/bin .

  # git pull and install vim setup
  git clone https://github.com/DavidWinterbottom/dotvim.git .vim

  cd ~/.vim
fi

git submodule init
git submodule update
cd -
