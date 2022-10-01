
<p align="center">
<img src="https://socialify.git.ci/dreamncn/SleepWithoutBluetoothAndWifi/image?description=1&descriptionEditable=Mac%E4%B8%8B%E7%9D%A1%E7%9C%A0%E5%85%B3%E9%97%ADWIFI%E5%92%8C%E8%93%9D%E7%89%99&forks=1&issues=1&language=1&name=1&pattern=Brick%20Wall&pulls=1&stargazers=1&theme=Light">
</p>

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

### 授权蓝牙控制器

> 安装完成后您可能需要手动授权才能使用
>
> 请解锁后手动勾上sleepwatcher

![image-20220422213555172](https://cdn.jsdelivr.net/gh/dreamncn/picBed@master/uPic/2022_04_22_21_35_55_1650634555_1650634555670_01k29l.png)

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