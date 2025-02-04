lxd環境でrfriends3を動作させるスクリプトです。  
LXD環境のインストールおよび初期化は済で、ホストはubuntuを想定しています。  
  
cd ~/  
sudo apt-get install git -y  
rm -rf rfriends_lxd  
git clone https://github.com/rfriends/rfriends_lxd.git  
cd rfriends_lxd  
sh rfriends_lxd.sh  

インストール方法は以下を参照してください。  
https://rfriends.github.io/rfriends/distro/lxd.html  
  
  
