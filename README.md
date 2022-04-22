<img src="https://cdn.jsdelivr.net/gh/dreamncn/picBed@master/uPic/2022_04_22_21_22_45_1650633765_1650633765034_z6I9js.png" style="text-align:center;width:200px" >

## 简介

这是MAC下一个睡眠自动关闭蓝牙WIFI，睡醒自动开启蓝牙WIFI的脚本

只需执行一次该脚本即可实现睡眠关闭蓝牙WIFI功能

> 可能需要关闭SIP才能正常使用

## 安装

> 你可以选择使用brew和没有brew的安装方法，两者选其一即可。

### brew（**推荐**）

```sh
git clone https://github.com/dreamncn/SleepWithoutBluetoothAndWifi
cd SleepWithoutBluetoothAndWifi
chmod +x ./install.sh
./install.sh
```

### 没有brew

```sh
 git clone https://github.com/dreamncn/SleepWithoutBluetoothAndWifi
 cd SleepWithoutBluetoothAndWifi
 chmod +x ./install-without-brew.sh
 ./install-without-brew.sh
```

## 卸载

```
 cd SleepWithoutBluetoothAndWifi
 chmod +x ./uninstall.sh
 ./uninstall.sh
```

## 其他

安装完成后你可以直接删除 `SleepWithoutBluetoothAndWifi`这个文件夹，卸载的时候再下载这个`uninstall.sh`这个文件来卸载。

## 授权

GPL3.0