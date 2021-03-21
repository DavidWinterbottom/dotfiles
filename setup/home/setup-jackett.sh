#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install mono-complete

wget https://github.com/Jackett/Jackett/releases/download/v0.17.671/Jackett.Binaries.Mono.tar.gz
gunzip Jackett.Binaries.Mono.tar.gz
tar -xvf Jackett.Binaries.Mono.tar

sudo mv Jackett /opt/Jackett

sudo adduser jackett --shell /usr/sbin/nologin
sudo chown -R jackett:jackett /opt/Jackett
