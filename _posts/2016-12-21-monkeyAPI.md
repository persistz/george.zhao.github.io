---
layout: post
title:  "Monkey API 翻译"
date:   2016-12-21
excerpt: ""
tag:
- Android Antomation Test
comments: true
---

此篇笔记，记录了API中，对monkey用法的说明，基于Android Studio 2.2.3。

Monkey是一个运行在Android模拟器或者Android设备上的程序，通过使用monkey，应用程序可以模拟一系列的用户操作，例如点击、触摸、手势等等，同时也可以进行系统层面的操作。我们可以使用Monkey进行对app的压力测试，通过一种随机的但易于重复的方式。

## 综述：
Monkey是一个命令行工具，因此使用Monkey需要借助adb shell。
Monkey的使用需要输入许多的参数和选项，它们主要可以分为以下4种类型：
* 基本配置选项，例如：设置尝试操作事件的数量
* 约束配置参数，例如：用于测试的特定的包名
* 事件的类型和频率
* 调试选项

当Monkey运行时，它会生成事件并发送给系统。同时它也会观察系统在测试下的表现，并且侧重于检测以下三种情况的发生：
* 如果你限制了Monkey在一个或多个特定的包中运行，那么它会监测所有导向其他包的尝试，并阻止这些尝试。
* 如果你的应用崩溃了，或者捕获了任何没有处理的异常，Monkey会停止并报告这些错误。
* 如果你的应用失去响应，Monkey会停止并报告这些错误。

## Monkey的基本用法：
Monkey使用时需要连接模拟器或者设备，相关的命令行可以通过脚本或命令行工具执行，基础的用例如下：

```shell
$ adb shell monkey [options] <event-count>
```

如果不输入任何特定参数的话，Monkey会进入quiet mode，这是会发送操作到目标设备上的所有已安装app。
标准的命令行用法如下，以下代码会打开特定的应用并发送500个伪随机事件：

```shell
$ adb shell monkey -p your.package.name -v 500
```

##命令参数列表：
下面的表格列出了你可以在Monkey中使用的所有参数：

| 目录   |                选项                | 描述                                       |
| :--- | :------------------------------: | :--------------------------------------- |
| 通用   |              --help              | 打印简单的参考用法（表格中可能会将双横线显示为长横线，使用时需注意）       |
|      |                -v                | 命令中的每个 -v 将增加报告的详细程度。<br>级别0（默认值）提供了除测试启动、完成和最终结果之外的很少信息；<br>级别1提供了测试运行时的更多详细信息，例如发送到活动的各个事件；<br>级别2提供了更详细的设置信息，例如选中或未被选中的用于测试的活动。 |
| 事件   |         -s &lt;seed&gt;          | 种子可以标记伪随机数生成器。如果使用相同的种子值重新运行Monkey，它将生成相同的伪随机事件序列。 |
|      |      --throttle &lt;ms&gt;       | 用于在事件之间插入延迟                              |
|      | --pct-touch <br>&lt;percent&gt;  | 调整触摸时间的百分比，相应的，可以将touch改为motion：滑动事件；pinchzoom：二指缩放事件；<br> trackball：轨迹时间，随机移动和点击；rotation:屏幕旋转事件；<br>nav：基本导航事件，例如上下左右的方向输入；majornav：主要导航事件，包括菜单键，返回键等；<br>syskeys：系统按建；<br>appweitch：启动activity的百分比，在随机间隔后，调用startactivity方法尽可能启动该package下所有activity；<br>anyevent：其他类型的事件 |
| 约束   |  -p <br>&lt;allowed-package&gt;  | 指定包名，需要注意，每个p选项只能指定一个包名，如果需要测试多个包，需要使用多个p选项 |
|      |   -c <br>&lt;main-category&gt;   |                                          |
| 调试   |         --dbg-no-events          | 设置此选项，Monkey将执行初始启动，进入一个测试Activity，不会再进一步生成事件。<br>为了得到最佳结果，可以把它与-v、一个或几个包约束，以及一个保持Monkey运行30秒或更长时间的<br>非零值结合起来，从而提供一个监控应用程序所调用的包之间的转换的环境。 |
|      |             --hprof              | 设置此选项，将会生成Monkey执行前后的内存快照，存放于data/misc目录，<br>可以用来监控内存泄漏，但由于内存快照文件较大，需小心使用 |
|      |         --ignore-crashes         | 出现crash暂不退出                              |
|      |        --ignore-timeouts         | 出现timeout暂不退出，例如application not responding |
|      | --ignore-security<br>-exceptions | 出现许可错误暂不退出，例如启动一个需要某些许可的Activity         |
|      |  --kill-process<br>-after-error  | 通常，当Monkey由于错误而停止时，出错的应用汇继续运行。<br>设置此选项，会通知系统停止发生错误的进程 |
|      |   --monitor-native<br>-crashes   | 监视并报告Android系统中本地代码的崩溃事件                 |
|      |            --wait-dbg            | 停止执行Monkey，直到有调试器和它相连接                   |

以上为Android官方文档中给出的Monkey命令介绍，部分命令由于自己使用较少，翻译时参考了《腾讯Android自动化测试实战》一书中的内容，今后随着自己对Android测试的深入了解会继续补充修改。在该书中，还给出了三个隐藏类参数，分别为--pkg-blacklist-file&lt;黑名单包&gt;；--pkg-whitelist-file&lt;白名单包&gt;；-f &lt;脚本文件&gt;。

前两个命令很容易理解，可通过文档来记录黑名单或白名单包，第三个命令可执行用户自定义的脚本文件。
