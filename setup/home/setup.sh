#!/bin/bash

sudo apt-get install git
sudo apt-get install fuseext2
sudo apt-get install lvm2
sudo apt-get install screen
sudo apt-get install vim
sudo apt-get install virtualbox-guest-x11
sudo apt-get install msmtp msmtp-mta mailutils

cd $HOME

if [ ! -d .dotfiles ]; then
  git clone https://github.com/DavidWinterbottom/dotfiles.git .dotfiles
  ln -sb .dotfiles/.bash_profile .
  ln -sb .dotfiles/.bashrc .
  ln -sb .dotfiles/.bashrc_custom .
  ln -sb .dotfiles/.screenrc .
  ln -sb .dotfile/.gitconfig .
fi

#sudo vgchange -ay c
#sudo lvs
#sudo lvdisplay /dev/c
#
#if [ ! -d /mnt/readynas ]; then
#  sudo mkdir /mnt/readynas
#fi
#sudo fuse-ext2 -o sync_read,allow_other,ro /dev/c/c /mnt/readynas

[[ ! -d /mnt/sharedboth ]] && sudo mkdir -p /mnt/sharedboth
[[ ! -d /mnt/movies ]] && sudo mkdir -p /mnt/movies
[[ ! -d /mnt/tv ]] && sudo mkdir -p /mnt/tv
[[ ! -d /mnt/music ]] && sudo mkdir -p /mnt/music
[[ ! -d /mnt/photos ]] && sudo mkdir -p /mnt/photos
[[ ! -d /mnt/home/david ]] && sudo mkdir -p /mnt/home/david/
[[ ! -d /mnt/transmission ]] && sudo mkdir -p /mnt/transmission

# links 
[[ ! -d /data/Transmission ]] && sudo mkdir -p /data && sudo ln -s /mnt/transmission /data/Transmission
[[ ! -d /data/Movies ]] && sudo mkdir -p /data && sudo ln -s /mnt/movies /data/Movies
[[ ! -d /data/TV ]] && sudo mkdir -p /data && sudo ln -s /mnt/tv /data/TV
[[ ! -d /media/Movies ]] && sudo mkdir -p /media && sudo ln -s /mnt/movies /media/Movies
[[ ! -d /media/TV ]] && sudo mkdir -p /media && sudo ln -s /mnt/tv /media/TV

