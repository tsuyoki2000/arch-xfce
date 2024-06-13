#!/bin/bash

##########################
# yay-bin をインストール #
##########################
cd
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si --noconfirm
cd
rm -rf yay-bin
