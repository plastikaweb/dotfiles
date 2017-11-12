#!/usr/bin/env bash

# Installing rbenv dependencies ...
sudo apt install curl

# Installing n, to change Node versions ...
curl -L https://git.io/n-install | N_PREFIX=~/.n bash -s -- -y -n


# vim:ft=sh
# File: $DOTFILES_PATH/n/n-install.sh
