#!/bin/bash

cd $HOME > /dev/null

ln -sb .dotfiles/.bash_profile .
ln -sb .dotfiles/.bashrc .
ln -sb .dotfiles/.bashrc_custom .
ln -sb .dotfiles/.screenrc .
ln -sb .dotfiles/.gitconfig .
ln -sb .dotfiles/.npmrc .
ln -sb .dotfiles/.inputrc .

cd - >/dev/null
