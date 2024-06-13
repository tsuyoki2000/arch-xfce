#!/bin/bash

######################
# GTKテーマ（Mac風） #
######################

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
#sudo WhiteSur-gtk-theme/install.sh -d /usr/share/themes/
sudo tar -xf WhiteSur-gtk-theme/release/WhiteSur-Dark.tar.xz -C /usr/share/themes/
sudo tar -xf WhiteSur-gtk-theme/release/WhiteSur-Dark-solid.tar.xz -C /usr/share/themes/
sudo tar -xf WhiteSur-gtk-theme/release/WhiteSur-Light.tar.xz -C /usr/share/themes/
sudo tar -xf WhiteSur-gtk-theme/release/WhiteSur-Light-solid.tar.xz -C /usr/share/themes/
rm -rf WhiteSur-gtk-theme/

# 最後に手動で設定する
# - 設定マネージャー
#   - ウィンドウマネージャー
#     -スタイル（ウィンドウタイトルバーのデザイン設定）
#   - 外観
#     - スタイル（ウィンドウ内の色設定）

# 上記で変わらないものも多々ある（設定マネージャのアイコン等）。
# 面倒だが、それぞれ手動で行う。

# install.sh を使用してインストールしようとすると
# libsass と sassc のパッケージをインストールしてから、
# テーマがインストールされる。
#
# 必要のないパッケージがインストールされるのは嫌なので、
# 今回は、tarコマンドでインストールする。

