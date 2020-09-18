---
layout: post
title:  "MonkeyRunner初探"
date:   2016-12-29
excerpt: "本文主要讲了MonkeyRunner的简单配置和连接过程"
tag:
- Android Automation Test
comments: true
---

本文主要讲了MonkeyRunner的简单配置和连接过程。

Monkeyrunner.bat文件存在于android sdk目录下的tools文件夹，可以在文件夹内按住shift+鼠标右键，选择“在此处打开命令窗口”快速呼出命令行工具。

![](http://oivuusuiw.bkt.clouddn.com/16-12-28/44236314-file_1482920230131_85b2.png)

在命令行中输入MonkeyRunner即可进入monkeyrunner的 JPython环境：

![](http://i1.piimg.com/567571/44e085c3618b188a.png)

随后导入相关包，

```python
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage
```

使用waitForConnection连接设备，

```python
device = MonkeyRunner.waitForConnection()
```

这里的参数可以置空，建设先使用adb devices查看设备是否连接成功；

如果无法连接设备，可以给waitForConnection设置参数，官方文档对该函数的说明如下：

######  waitForConnection (*float* timeout, *string* deviceId)

Tries to make a connection between the `monkeyrunner` backend and the specified device or emulator.

###### Arguments

> timeout: The number of seconds to wait for a connection. The default is to wait forever.

> deviceId: A regular expression that specifies the serial number of the device or emulator. See the topic [Android Debug Bridge](https://developer.android.google.cn/tools/help/adb.html) for a description of device and emulator serial numbers.

###### Returns

A MonkeyDevice instance for the device or emulator. Use this object to control and communicate with the device or emulator.

由此可知，第一个参数为超时时间，第二个参数为设备地址（地址可通过adb devices获得），可以使用以下demo：

```python
device = MonkeyRunner.waitForConnection(5, '127.0.0.1:2333')
```

使用installpackage命令安装apk：

![](http://p1.bqimg.com/567571/f56cc87d140f5766.png)

安装完成后，即可启动应用和activity，启动activity有多种方式：

```python
# 可写做
device.startActivity("com.example.zhaoge.activitytest/com.example.zhaoge.activitytest.FirstActivity") 
# 或者
device.startActivity("com.example.zhaoge.activitytest/.FirstActivity") 
# 或者
component="com.example.zhaoge.activitytest/.FirstActivity"
device.startActivity(component)
```

随后，参考官方文档中给出的函数，可进行常见的touch、press、drag、type等操作：

[MonkeyDevice](https://developer.android.google.cn/studio/test/monkeyrunner/MonkeyDevice.html)

[MonkeyRunner](https://developer.android.google.cn/studio/test/monkeyrunner/MonkeyRunner.html)

将代码保存在.py文件中，可以让MonkeyRunner执行连续代码段：

```python
# test.py
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage
device = MonkeyRunner.waitForConnection()
component="com.example.zhaoge.activitytest/.FirstActivity"
device.startActivity(component)
MonkeyRunner.sleep(3)
device.touch(350, 100, 'DOWN_AND_UP')
device.press('KEYCODE_HOME','DOWN_AND_UP')
```

退出monkeyrunner的python命令行（ctrl+z），执行monkeyrunner f:/test.py

![](http://p1.bpimg.com/567571/92f198320a58d350.gif)

###### 总结

>  上图为执行脚本的gif动画，monkeyrunner采用坐标进行点击操作，脚本健壮性较差，可使用截图和图片比较作为检查点操作，因为使用python，个人认为可扩展性较高，参数化的输入比较容易实现，可用于渠道包的批量安装卸载测试等等。





