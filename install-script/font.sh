#!/bin/bash

##########################
# フォントをインストール #
##########################

# 白源フォント
# https://github.com/yuru7/HackGen

# パッケージのインストール
echo "Installing ttf-hackgen..."
yay -S ttf-hackgen --needed --noconfirm

# otf-ipafont の代わりに、HackGenフォントを入れたので、
# otf-ipafont がインストール済みの場合、削除する
check=$(pacman -Qs otf-ipafont)
if [ -n "$check" ] ; then
  sudo pacman -Rs otf-ipafont --noconfirm
fi;

