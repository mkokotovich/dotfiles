#!/bin/bash
set -xeuo pipefail

# See https://davesteele.github.io/raspberrypi/2016/04/23/raspberry-pi-cloudprint/ for details

sudo apt-get -y install cloudprint-service hplip
sudo cupsctl --remote-admin
sudo usermod -a -G lpadmin matt
sudo usermod -a -G lpadmin pi
sudo systemctl restart cups

echo "Ensure the printer is connected via USB, then go to http://192.168.86.200:631/ and configure the printer"

sudo cps-auth
#sudo systemctl restart cloudprintd

