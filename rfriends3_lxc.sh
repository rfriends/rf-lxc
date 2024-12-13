#!/bin/sh
# -----------------------------------------
# install rfriends for  add lxc
# -----------------------------------------
# 1.0 2023/07/19
# -----------------------------------------
echo
echo rfriends3 for add lxc 1.0
echo
# -----------------------------------------
echo
echo 追加ツールをインストール
echo
#
sudo apt -y install openssh-server
# -----------------------------------------
echo timezoneを日本に変更
echo
sudo rm /etc/localtime
echo Asia/Tokyo > ~/timezone
sudo cp -p timezone /etc/timezone
rm ~/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
# -----------------------------------------
echo cron,atdをenable
echo
sudo systemctl enable cron
sudo systemctl enable atd
# -----------------------------------------
# 終了
# -----------------------------------------
echo
echo finished
# -----------------------------------------
