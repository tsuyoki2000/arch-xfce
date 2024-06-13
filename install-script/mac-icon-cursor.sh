#!/bin/bash

###############################
# アイコンとカーソル（Mac風） #
###############################

ICON_DIR="/usr/share/icons"
#ICON_DIR="$HOME/.local/share/icons"

# アイコン
git clone https://github.com/vinceliuice/WhiteSur-icon-theme
sudo WhiteSur-icon-theme/install.sh -d $ICON_DIR
rm -rf WhiteSur-icon-theme/
echo "WhiteSur-icon-theme done."
echo

# カーソル（Mojave）
git clone https://github.com/vinceliuice/McMojave-cursors
sudo cp -rp McMojave-cursors/dist/ $ICON_DIR/McMojave-cursors/
rm -rf McMojave-cursors/
echo "McMojave-cursors done."
echo

# カーソル（WhiteSur）
git clone https://github.com/vinceliuice/WhiteSur-cursors
sudo cp -rp WhiteSur-cursors/dist/ $ICON_DIR/WhiteSur-cursors/
rm -rf WhiteSur-cursors/
echo "WhiteSur-cursors done."
echo

# 設定は手動で行う
# ・カーソル
# 【メニュー】−【設定マネージャー】−【マウスとタッチパッド】
# 【テーマ】タブ
#
# ・アイコン
# 【メニュー】−【設定マネージャー】−【外観】
# 【アイコン】タブ
#
# それでも、変わらないアイコンは多々ある（file-manager とか）。
# （アイコン自体は存在するので、手動で行う）
# 1. パネルに WhiskerMenu を追加
# 2. WhiskerMenu でアイコン変更したいものを探し、右クリック
# 3. アプリケーションの編集 を選択
# 4. アイコンの所をクリックし、アイコンを選ぶ

