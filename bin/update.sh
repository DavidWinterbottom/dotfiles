#!/bin/bash

brew update
brew upgrade
brew cleanup -s
brew cask upgrade 

npm update -g
