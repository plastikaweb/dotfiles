#!/usr/bin/env bash

# Read: https://askubuntu.com/questions/852302/failure-to-download-extra-data-files-ttf-mscorefonts-installer

TTFONTS_DIR=${HOME}/.local/share/fonts/truetype

# Install Lora fonts
LORAFONTS_DIR=${TTFONTS_DIR}/lora
LORAFONTS_FILE=${DOTFILES_PATH}/fonts/Lora.tar.gz

[[ ! -d "${LORAFONTS_DIR}" ]] && mkdir -m 755 -p ${LORAFONTS_DIR}
tar -C ${LORAFONTS_DIR} -xzf ${LORAFONTS_FILE} \
    && chmod 644 ${LORAFONTS_DIR}/*

# Install Roboto fonts
ROBOTOFONTS_DIR=${TTFONTS_DIR}/roboto
ROBOTOFONTS_FILE=${DOTFILES_PATH}/fonts/Roboto.tar.gz

[[ ! -d "${ROBOTOFONTS_DIR}" ]] && mkdir -m 755 -p ${ROBOTOFONTS_DIR}
tar -C ${ROBOTOFONTS_DIR} -xzf ${ROBOTOFONTS_FILE} \
    && chmod 644 ${ROBOTOFONTS_DIR}/*

# Install MS fonts
MSFONTS_DIR=${TTFONTS_DIR}/msttfonts
MSFONTS_FILE1=${DOTFILES_PATH}/fonts/MSfonts.tar.gz
MSFONTS_FILE2=${DOTFILES_PATH}/fonts/ttf-mscorefonts-installer_3.6_all.deb

[[ ! -d "${MSFONTS_DIR}" ]] && mkdir -m 755 -p ${MSFONTS_DIR}
tar -C ${MSFONTS_DIR} -xzf ${MSFONTS_FILE1} \
    && chmod 644 ${MSFONTS_DIR}/*

sudo apt install cabextract
sudo dpkg -i ${MSFONTS_FILE2}

# Update fonts cache
fc-cache -fv


# vim:ft=sh
# File: $DOTFILES_PATH/fonts/fonts-install.sh
