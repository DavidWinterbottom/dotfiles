#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

if [[ `uname` == "MINGW32_NT-6.2" ]]; then
  echo "creating environment for Windows 8"
elif [[ `uname` == "MINGW32_NT-6.1" ]]; then
  echo "creating environment for Windows 7"
elif [[ `uname` == "Linux" ]]; then
  echo "creating environment for Linux"
elif [[ `uname` == "Darwin" ]]; then
  echo "creating environment for Mac"
else
  echo "unknown environment `uname`"
  exit -1
fi

# git pull and install dotfiles as well
cd $HOME

if [[ -d ".dotfiles" ]]; then
  cd .dotfiles
  git pull
  cd ..
else
  git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
fi

if [[ `uname` == "MINGW32_NT-6.2" || `uname` == "MINGW32_NT-6.1" ]]; then

  cp -f .dotfiles/.screenrc .
  cp -f .dotfiles/.bash_profile .
  cp -f .dotfiles/.bashrc .
  cp -f .dotfiles/.bashrc_custom .
  cp -f .dotfiles/.gitconfig .
  cp -f .dotfiles/.inputrc .
  cp -f .dotfiles/.ctags .

  # copy over the bin directory
  cp -rf .dotfiles/bin .

  # copy over the conEum settings file
  cp .dotfiles/ConEmu.xml /c/local/tools/ConEmu

elif [[ `uname` == "Linux" || `uname` == "Darwin" ]]; then

  # git pull and install dotfiles as well
  cd $HOME
  ln -fs .dotfiles/.screenrc .
  ln -fs .dotfiles/.bash_profile .
  ln -fs .dotfiles/.bashrc .
  ln -fs .dotfiles/.bashrc_custom .
  ln -fs .dotfiles/.gitconfig .
  ln -fs .dotfiles/.inputrc .
  ln -fs .dotfiles/.ctags .

  # link the bin directory
  ln -fs .dotfiles/bin .

fi
