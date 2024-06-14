#!/bin/bash

########################
# xfce4 のセットアップ #
########################

NORMAL=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)

function red() {
    echo -e "$RED$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

function green() {
    echo
    echo -e "$GREEN$*$NORMAL"
}

# pacman-conf の編集
green "Editing pacman.conf..."
bash install-script/pacman-conf.sh

# xfce4（最小構成）のインストール
green "Installing xfce4 Minimal..."
bash install-script/xfce4-minimal.sh

# yay-bin のインストール
green "Installing yay-bin..."
bash install-script/yay-bin.sh

# fcitx5 のインストール（ユーザー毎に設定ファイルを作成）
green "Installing fcitx5..."
bash install-script/fcitx5-user.sh

# CapsLock を Ctrl にする
green "Modifying CapsLock to Ctrl..."
bash install-script/capslock2ctrl.sh

# 壁紙（Mac風）
green "Installing Wallpaper Like Mac..."
bash install-script/mac-wallpaper.sh

# アイコンとカーソル（Mac風）
green "Installing Icon & Cursor Like Mac..."
bash install-script/mac-icon-cursor.sh

# GTKテーマ（Mac風）
green "Installing GTK Theme Like Mac..."
bash install-script/mac-gtk-theme.sh

# ブラウザのインストール
green "Installing Browser..."
bash install-script/browser.sh

# フォントのインストール
green "Installing font..."
bash install-script/font.sh

# Neovim と Neovimディストリビューションのインストール
green "Installing Neovim..."
bash install-script/neovim.sh

# ファイルマネージャー（CLI）のインストール
green "Installing FileManager(CLI)..."
bash install-script/filemanager-cli.sh

# ディスプレイマネージャのインストール
green "Installing Display Manager..."
bash install-script/display-manager.sh

# 設定ファイルのコピー
# xfce4 の設定（Mac風）
cp -r dotfiles/xfce4/ $HOME/.config/



# 再起動
green "Install is Complete."
green "Type 'reboot' or 'poweroff'"
#reboot

