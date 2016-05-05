#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

if [[ `uname` == "MINGW32_NT-6.2" || `uname` == "MINGW32_NT-6.1" ]]; then
  echo "creating environment for Windows"

  cp -f .dotfiles/.bash_profile .
  cp -f .dotfiles/.bashrc .
  cp -f .dotfiles/.bashrc_custom .

  cp -f .dotfiles/.inputrc .
  cp -f .dotfiles/.screenrc .

  cp -f .dotfiles/.babel.json .
  cp -f .dotfiles/.eslintrc .
  cp -f .dotfiles/.jshintrc .

  cp -f .dotfiles/.gitconfig .

  # copy over the bin directory
  cp -rf .dotfiles/bin .

  # copy over the conEum settings file
  mkdir -p /c/local/tools/ConEmu
  cp .dotfiles/ConEmu.xml /c/local/tools/ConEmu

elif [[ `uname` == "Linux" || `uname` == "Darwin" ]]; then
  echo "creating environment for `uname`"

  ln -fs .dotfiles/.bash_profile .
  ln -fs .dotfiles/.bashrc .
  ln -fs .dotfiles/.bashrc_custom .

  ln -fs .dotfiles/.inputrc .
  ln -fs .dotfiles/.screenrc .

  ln -fs .dotfiles/.babel.json .
  ln -fs .dotfiles/.eslintrc .
  ln -fs .dotfiles/.jshintrc .

  ln -fs .dotfiles/.gitconfig .

  # link the bin directory
  ln -fs .dotfiles/bin .

else
  echo "unknown environment `uname`"
  exit -1
fi
