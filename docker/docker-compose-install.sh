#!/usr/bin/env bash

# Download the latest version of Docker Compose ...
[[ ! -d "${APPLICATIONS_PATH}/docker-compose" ]] && mkdir -p ${APPLICATIONS_PATH}/docker-compose
curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` -o ${APPLICATIONS_PATH}/docker-compose/docker-compose
ln -s ${APPLICATIONS_PATH}/docker-compose/docker-compose ${HOME}/.bin/docker-compose

# Apply executable permissions to the binary ...
chmod +x ${APPLICATIONS_PATH}/docker-compose/docker-compose

# Install command completion for the zsh shell ...
curl -L https://raw.githubusercontent.com/docker/compose/1.17.1/contrib/completion/zsh/_docker-compose > ${DOTFILES_PATH}/zsh/completion.d/_docker-compose

# Test the installation
echo Test the installation running docker-compose --version


# vim:ft=sh
# File: $DOTFILES_PATH/docker/docker-compose-install.sh
