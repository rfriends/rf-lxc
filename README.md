lxd環境でrfriends3を動作させるスクリプトです。  
LXDのインストールは済で、ホストはubuntuを想定しています。  
  
cd ~/  
sudo apt-get install git -y  
rm -rf rfriends_lxd  
git clone https://github.com/rfriends/rfriends_lxd.git  
cd rfriends_lxd  
sh rfriends_lxd.sh  
  
lxd環境でrfriends3をインストールする詳細な方法は以下を参照してください。  
[rfriends3のインストール手順（LXD編）](https://github.com/rfriends/rfriends_lxd/wiki)

以下のサイトが非常に参考になります。  
[Dockerに疲れた人のためのLXDではじめるシステムコンテナ入門](https://speakerdeck.com/devops_vtj/dockernipi-retaren-notamenolxddehazimerusisutemukontenaru-men)
