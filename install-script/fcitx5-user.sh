#!/bin/bash

###########################################################
# fcitx5 のインストール（ユーザー毎に設定ファイルを作成） #
###########################################################

XPROFILE="$HOME/.xprofile"

# パッケージのインストール
# fcitx5-im（fcitx5 パッケージ一式）
# fcitx5-mozc（fcitx5 用の mozc）
sudo pacman -Sy fcitx5-im fcitx5-mozc --needed --noconfirm

# お決まりの呪文を追加
echo "
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
" >> $XPROFILE

echo "Re:login"
