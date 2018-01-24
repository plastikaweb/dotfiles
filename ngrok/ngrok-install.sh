#!/usr/bin/env bash

# Download the latest stable version of ngrok ...
[[ ! -d "${APPLICATIONS_PATH}/ngrok" ]] && mkdir -p ${APPLICATIONS_PATH}/ngrok
curl -L https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ${APPLICATIONS_PATH}/ngrok/ngrok.zip

# Install the latest version of ngrok ...
unzip ${APPLICATIONS_PATH}/ngrok/ngrok.zip -d ${APPLICATIONS_PATH}/ngrok
rm -f ${APPLICATIONS_PATH}/ngrok/ngrok.zip

# Apply executable permissions to the binary ...
chmod +x ${APPLICATIONS_PATH}/ngrok/ngrok

# Add ngrok to your PATH
ln -s ${APPLICATIONS_PATH}/ngrok/ngrok ${HOME}/.bin/ngrok


# vim:ft=sh
# File: $DOTFILES_PATH/ngrok/ngrok-install.sh
