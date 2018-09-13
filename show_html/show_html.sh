#!/bin/bash
destFile=screenshot.png
sourceFile=$(basename $1)

#tmpにコピーと移動
cp $1 /tmp/
cd /tmp/

#キャプチャー実行
chromium-browser --headless --disable-gpu --screenshot --window-size=300,400 $sourceFile > /dev/null 2>&1

#img書き出し
show_img $destFile

#後片付け
rm $sourceFile
rm $destFile