#!/bin/bash

# APACHE
apt update
sudo apt install apache2
sudo ufw allow 'Apache'
# END APACHE

# NODE
apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm isntall --lts

n=$(which node); \
n=${n%/bin/node}; \
chmod -R 755 $n/bin/*; \
sudo cp -r $n/{bin,lib,share} /usr/local
# END NODE
