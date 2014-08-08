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
  cp -f .dotfiles/.npmrc .
  cp -f .dotfiles/.inputrc .
  cp -f .dotfiles/.ctags .

  # copy over the bin directory
  cp -rf .dotfiles/bin .

  # copy over the conEum settings file
  cp .dotfiles/ConEmu.xml /c/local/tools/ConEmu

elif [[ `uname` == "Linux" || `uname` == "Darwin" ]]; then

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

fi
