#!/bin/bash

#########################
# Neovim のインストール #
#########################
XPROFILE="$HOME/.xprofile"

# パッケージのインストール
sudo pacman -Sy neovim --needed --noconfirm

# お決まりの呪文を追加
echo "export EDITOR=nvim" >> $XPROFILE



########################################################
# NvChad（Neovimディストリビューション）のセットアップ #
########################################################

NVIM_CONFIG="${HOME}/.config/nvim/init.lua"

if [ ! -e $NVIM_CONFIG ]; then
  mkdir -p $HOME/.config/nvim/
  git clone https://github.com/NvChad/starter $HOME/.config/nvim
  rm -rf $HOME/.config/nvim/.git
fi

# ripgrep と unzip のインストール
sudo pacman -S ripgrep unzip --needed --noconfirm

