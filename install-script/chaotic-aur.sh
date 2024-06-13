#!/bin/bash

################################
# Chaotic-AUR リポジトリの追加 #
# https://aur.chaotic.cx/      #
################################

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm

# /etc/pacman.conf の編集
PACMAN_CONF="/etc/pacman.conf"
sudo sh -c "echo  >> $PACMAN_CONF"
sudo sh -c "echo [chaotic-aur] >> $PACMAN_CONF"
sudo sh -c "echo Include = /etc/pacman.d/chaotic-mirrorlist >> $PACMAN_CONF"

# リポジトリの更新
sudo pacman -Sy

