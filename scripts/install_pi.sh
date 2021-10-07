#!/bin/bash
# install_pi.sh
# Installs necessary scripts on the Raspberry pi

echo "Installing base dependencies";
sudo apt-get update
sudo apt-get install -y autossh nginx

sudo rm /var/www/html/index.nginx-debian.html
sudo mv ../src/html/index.html /var/www/html/index.html
