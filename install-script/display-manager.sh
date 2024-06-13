#!/bin/bash

##########################################
# ディスプレイマネージャーのインストール #
##########################################

# # lightdm
# # パッケージのインストール
# sudo pacman -Sy lightdm lightdm-gtk-greeter --needed --noconfirm
# # ディスプレイマネージャーの有効化
# sudo systemctl -f enable lightdm


# sddm
# パッケージのインストール
sudo pacman -Sy sddm --needed --noconfirm
# ディスプレイマネージャーの有効化
sudo systemctl -f enable sddm

