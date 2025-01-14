#!/bin/bash
#
cd ~/  
rm -rf rfriends3_ubuntu
sudo apt-get install git -y  
git clone https://github.com/rfriends/rfriends_ubuntu.git
cd rfriends_ubuntu  
sh rfriends_ubuntu.sh  
 
hostname -i  
echo
echo ホストのWebブラウザで、IPアドレス:8000 でアクセスしてください
exit 0
