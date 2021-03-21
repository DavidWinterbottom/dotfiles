#!/bin/bash

sudo apt-get update
sudo apt-get install libc6-dev gcc libtag1-dev libssl-dev zlibc zlib1g-dev libffi-dev 
sudo apt-get install libsqlite3-dev
sudo apt-get install libjpeg-dev zlib1g-dev

if [ ! -d ~/Python-3.9.1 ]; then
  cd ~
  wget http://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz 
  tar xzf Python-3.9.1.tgz 
  cd Python-3.9.1
  ./configure --build=sparc-linux
  sudo make install
  cd -
else 
  cd ~/Python-3.9.1
  ./configure --build=sparc-linux
  sudo make install
  cd -
fi

