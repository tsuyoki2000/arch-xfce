#!/bin/bash

###################################
# xfce4（最小構成）のインストール #
###################################

# インストールするパッケージ
PACKAGE="
xorg
xfce4
xfce4-goodies
noto-fonts-cjk
gvfs
network-manager-applet
"
# xorg（Xシステム。必須）
# xfce4（xfce 本体。必須）
# xfce4-goodies（xfce のアプリ）
# noto-fonts-cjk（日本語フォント）
# gvfs（ゴミ箱や自動マウント等の機能を追加する）
# network-manager-applet（ネットワークの切替アプレット）

# パッケージのインストール
sudo pacman -Syu $PACKAGE --needed --noconfirm

echo "Minimal-xfce4 is Complete !!"
echo "Type 'startxfce4'"
