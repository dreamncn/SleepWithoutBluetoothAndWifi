#!/bin/bash
which "brew" > /dev/null
if [ $? -eq 0 ]
then
	echo -e "\033[32m [OK] \033[0m已安装brew"
else
	echo -e "\033[33m [Warn] \033[0m未安装brew 请运行brew_install文件安装"
   exit
fi

echo  -e "\033[36m [Info] \033[0m蓝牙控制服务安装中..."
#安装blueutil
brew install blueutil
brew unlink blueutil && brew link --overwrite blueutil
if [ $? -eq 0 ]
then
	echo -e "\033[32m [OK] \033[0m蓝牙控制服务安装完成..."
else
	echo -e "\033[31m [Err] \033[0m蓝牙控制服务安装失败...."
   	exit
fi
echo  -e "\033[36m [Info] \033[0m睡眠监听服务安装中..."
#安装sleepwatcher
brew install sleepwatcher
if [ $? -eq 0 ]
then
	echo -e "\033[32m [OK] \033[0m睡眠监听服务安装完成..."
else
	echo -e "\033[31m [Err] \033[0m睡眠监听服务安装失败...."
   	exit
fi
echo  -e "\033[36m [Info] \033[0m我们需要root权限来修改一些配置文件，请授权..."
#后续操作
cd ~
sudo rm -rf .sleep
sudo rm -rf .wakeup
touch .sleep
touch .wakeup
sudo chmod 777 .sleep
sudo chmod 777 .wakeup
echo 'blueutil -p 0' >> .sleep
echo 'blueutil -p 1' >> .wakeup
echo 'networksetup -setairportpower en0 off' >> .sleep
echo 'networksetup -setairportpower en0 on' >> .wakeup
#启动服务
if ps -ef|grep "sleepwatcher"|egrep -v grep >/dev/null
then
        brew services restart sleepwatcher

else
        brew services start sleepwatcher
fi

if [ $? -eq 0 ]
then
	echo -e "\033[32m [OK] \033[0m服务已启动，请尝试睡眠..."
else
	echo -e "\033[31m [Err] \033[0m服务启动失败...."
fi