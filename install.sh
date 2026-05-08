#!/bin/bash
apt-get update -y
apt-get upgrade -y
wget https://github.com/john30/ebusd/releases/download/26.1/ebusd-26.1_amd64-bookworm_mqtt1.deb
dpkg -i ebusd-26.1_amd64-bookworm_mqtt1.deb
apt-get update -y
apt-get upgrade -y -f

