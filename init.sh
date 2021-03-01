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


# DOCKER
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce
# END DOCKER

# DOCKER-COMPOSE
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# END DOCKER-COMPOSE
