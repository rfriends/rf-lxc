#!/bin/bash
#
# イメージ、コンテナ名、ユーザ名は変更可
image=ubuntu:24.04
cont=rfriends3
user=radio
#
rootdir=/root
#
echo LXD easy install start
echo
echo image : $image
echo contena : $cont
echo user : $user

# コンテナ作成
sudo lxc launch $image $cont

# rfriends_install.shをルートディレクトリにコピー
sudo lxc file push rfriends_install.sh.skel $cont/$rootdir/rfriends_install.sh 

# lxd_install.shをルートディレクトリにコピー
sed -e s%rfriendsuser%$user%g lxd_install.sh.skel > lxd_install.sh
sudo lxc file push lxd_install.sh $cont/$rootdir/lxd_install.sh 

# lxd_install.sh を実行
sudo lxc exec $cont -- sh $rootdir/lxd_install.sh 

# IPアドレス
sudo lxc list $cont
echo
echo コンテナがRUNNINGであることを確認したら、
echo ホストのWebブラウザで、IPアドレス:8000 でアクセスしてください

exit 0
