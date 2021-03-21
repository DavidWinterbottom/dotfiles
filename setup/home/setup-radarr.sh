#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

wget https://github.com/Radarr/Radarr/releases/download/v3.0.2.4552/Radarr.master.3.0.2.4552.linux-core-arm64.tar.gz
gunzip Radarr.master.3.0.2.4552.linux-core-arm64.tar.gz
tar -xvf Radarr.master.3.0.2.4552.linux-core-arm64.tar
sudo mv Radarr /opt/radarr

sudo adduser radarr --shell /usr/sbin/nologin

sudo chown -R radarr:radarr /opt/radarr
