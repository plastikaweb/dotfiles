#!/usr/bin/env bash

# Update the apt package index ...
sudo apt update

# Install packages to allow apt to use a repository over HTTPS ...
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key ...
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository ...
echo deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable | sudo tee /etc/apt/sources.list.d/docker.list

# Update the apt package index ...
sudo apt update

# Install the latest version of Docker CE ...
sudo apt install docker-ce

# Create the docker group ...
sudo groupadd docker

# Add your user to the docker group ...
sudo usermod -aG docker $USER

# Logout to apply changes ...
echo Logout to apply changes.


# vim:ft=sh
# File: $DOTFILES_PATH/docker/docker-install.sh
