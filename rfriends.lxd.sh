#!/bin/bash
#
# コンテナ名、ユーザ名、イメージは変更可
cont=rfriends3
user=radio
image=ubuntu:24.04
#
echo LXD easy install start
echo contena : $cont
echo user : $user

inssh=rfriends_install
# make user
cat <<EOF > user.sh
#!/bin/bash

# ユーザ作成
useradd -m -s /bin/bash $user
#passwd $user
gpasswd  -a $user sudo

# git install
apt-get install git -y  

# インストールshをユーザディレクトリにコピーし実行
cp rfriends_install.sh /home/$user/rfriends_install.sh
chown $user:$user /home/$user/rfriends_install.sh
su $user -c "sh /home/$user/rfriends_install.sh"
EOF

# コンテナ作成
sudo lxc launch $image $cont
# user.shをルートディレクトリにコピー
sudo lxc file push user.sh $cont//root/user.sh 
# user,shを実行
sudo lxc exec $cont -- sh user.sh
exit 0
