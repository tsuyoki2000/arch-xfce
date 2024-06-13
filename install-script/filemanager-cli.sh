#!/bin/bash

###############################################
# ファイルマネージャーの（CLI）のインストール #
###############################################

# yazi
# パッケージのインストール
sudo pacman -Sy yazi --needed --noconfirm

# 設定ファイルのコピー
# yazi は設定ファイルを持たないので、デフォルトの設定を
# コンフィグファイルに書き起こしたものをネットからダウンロードする
mkdir -p $HOME/.config/yazi
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/yazi.toml -o $HOME/.config/yazi/yazi.toml
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/keymap.toml -o $HOME/.config/yazi/keymap.toml
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/theme.toml -o $HOME/.config/yazi/theme.toml

# yazi インストール時に提案されるパッケージ
# - jq：JSONプレビュー
# - ffmpegthumbnailer：ビデオサムネイル
# - poppler：PDFプレビュー
# - unarchiver：アーカイブプレビュー
# - fd：ファイル検索？
# - ripgrep：ファイル内容検索
# - fzf：ディレクトリジャンプ
# - zoxide：ディレクトリジャンプ
