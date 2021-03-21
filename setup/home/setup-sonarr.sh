#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install dirmngr
sudo apt-get install apt-transport-https -y --force-yes

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493
echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list

sudo apt update
sudo apt install nzbdrone -y

sudo adduser sonarr

sudo chown -R sonarr:sonarr /opt/NzbDrone
