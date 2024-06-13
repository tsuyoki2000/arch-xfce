#!/bin/bash

######################################################
# ueberzug++ のインストール                          #
# （CLI ファイルマネージャーの画像プレビューに必要） #
######################################################

# yazi
# https://yazi-rs.github.io/docs/image-preview/
# X11 では ueberzugpp をインストールする必要がある
echo
echo "ueberzugpp のインストール"
yay -Sy ueberzugpp --needed --noconfirm

echo
echo "不要なパッケージを削除"
yay -Yc --noconfirm

# yazi.toml があると、なぜか画像プレビューができなくなるので、リネーム
# （preloaders = […] 部分を削除すると動作する）
mv $HOME/.config/yazi/yazi.toml $HOME/.config/yazi/yazi.toml.bak



# ranger
# rangerでも使用できると思うが、extra/ueberzug を使用するのが一般的



# その他 yazi とは関係ないが、以下のようなものもある。
# - imgcat
#   - イメージビューアー（yazi 上で表示はできない）
#   - go製
#   - インストール時のビルドも比較的早い
#   - ターミナルに表示する事も可能だが、ドット絵みたいになる。
#   - yay -Sy imgcat

