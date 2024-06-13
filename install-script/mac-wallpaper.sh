#!/bin/bash

#################
# 壁紙（Mac風） #
#################

WALLPAPER_DIR="/usr/share/backgrounds"
#ICON_DIR="$HOME/.local/share/backgrounds"

git clone https://github.com/vinceliuice/WhiteSur-wallpapers
sudo cp -rp WhiteSur-wallpapers/4k/ $WALLPAPER_DIR/WhiteSur-wallpapers/
rm -rf WhiteSur-wallpapers/
echo "WhiteSur-Wallpapers done."
echo
