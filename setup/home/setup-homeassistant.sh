#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo useradd -rm homeassistant
sudo mkdir -p /srv/homeassistant
sudo chmod hostassistant:homeassistant /src/homeassistant

sudo -u homeassistant -H -s -c 'date; whoami'

