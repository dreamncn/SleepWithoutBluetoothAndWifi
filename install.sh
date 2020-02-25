#!/bin/bash
which "brew" > /dev/null
if [ $? -eq 0 ]
then
   echo "未安装brew 正在尝试安装..."
    /usr/bin/ruby brew_install
   echo "已安装brew..."
fi

echo "蓝牙控制服务安装中..."
#安装blueutil
brew install blueutil
brew unlink blueutil && brew link --overwrite blueutil
echo "蓝牙控制服务安装完成..."
echo "睡眠监听服务安装中..."
#安装sleepwatcher
brew install sleepwatcher
echo "睡眠监听服务安装完成..."
cd ~
touch .sleep
touch .wakeup
sudo chmod 777 .sleep
sudo chmod 777 .wakeup
echo 'blueutil -p 0' > .sleep
echo '/usr/local/bin/blueutil on' > .wakeup
echo 'networksetup -setairportpower en0 off' > .sleep
echo 'networksetup -setairportpower en0 on' > .wakeup
#启动服务

brew services start sleepwatcher
echo "服务已启动，请尝试睡眠..."