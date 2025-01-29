lxd環境でrfriends3を動作させるスクリプトです。  
LXD環境のインストールおよび初期化は済で、ホストはubuntuを想定しています。  
  
cd ~/  
sudo apt-get install git -y  
rm -rf rfriends_lxd  
git clone https://github.com/rfriends/rfriends_lxd.git  
cd rfriends_lxd  
sh rfriends_lxd.sh  

インストール方法は以下を参照してください。  
https://github.com/rfriends/rfriends/blob/gh-pages/distro/lxd.md
  
以下のサイトが非常に参考になります。  
[Dockerに疲れた人のためのLXDではじめるシステムコンテナ入門](https://speakerdeck.com/devops_vtj/dockernipi-retaren-notamenolxddehazimerusisutemukontenaru-men)
