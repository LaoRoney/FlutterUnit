
[![GitHub stars](https://img.shields.io/github/stars/toly1994328/FlutterUnit)](https://github.com/toly1994328/FlutterUnit/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/toly1994328/FlutterUnit)](https://github.com/toly1994328/FlutterUnit/network)
[![GitHub license](https://img.shields.io/github/license/toly1994328/FlutterUnit)](https://github.com/toly1994328/FlutterUnit/blob/master/LICENSE)

### FlutterUnit 下载体验:


| FlutterUnit.apk 下载  | FlutterUnit mac版 下载 | FlutterUnit win版 下载 | 
|------|------------|------------|
|![](http://toly1994.com/file/ewm/FlutterUnit.png)|![](http://toly1994.com/file/ewm/FlutterUnitMac.png)| ![](http://toly1994.com/file/ewm/FlutterUnitWin.png)|     

---

> 当前版本与分支

```
---[• flutter --version
Flutter 1.20.0-3.0.pre.159 • channel master •
https://github.com/flutter/flutter.git
Framework • revision 77310c152f (6 hours ago) • 2020-07-07 18:04:02 -0700
Engine • revision d0d6a4c236
Tools • Dart 2.9.0 (build 2.9.0-20.0.dev 69aba23371)
```


#### 一、如何运行出FlutterUnit mac

##### 1. 如何使用Flutter mac


```!
目前稳定版(Stable)本并不支持macos,你可以切换到master分支进行体验。
```


- 环境: `重新准备一个FlutterSDK,并使用flutter master分支`
- 开启macos 桌面支持: `flutter config --enable-macos-desktop`


```
---[• flutter config --enable-macos-desktop

---[• flutter --version
Flutter 1.18.0-7.0.pre.46 • channel master •
https://github.com/flutter/flutter.git
Framework • revision 1f132e90f8 (11 days ago) • 2020-04-23 11:00:12 +0530
Engine • revision d3f1c08f52
Tools • Dart 2.9.0 (build 2.9.0-2.0.dev 64b8ded48b)
```


---

##### 2. 如何获取FlutterUnit mac代码

- [FlutterUnit的github项目](https://github.com/toly1994328/FlutterUnit)中新建了一个[flutter_unit_mac](https://github.com/toly1994328/FlutterUnit/tree/flutter_unit_mac)的分支  
- FlutterUnit mac端，或说桌面端将在这个分支进行维护，和移动端独立。


```!
由于移动端和桌面端的情况有很大的不同，而且两者需要的SDK不同。
所以我并不在原移动端代码中进行适配，而是新建分支进行两个独立的项目。
其实两种完全不同的情景，并没有必要强行合一，否则会感觉到处束手束脚。
判断起来也会让代码变的复杂和难以阅读，独立维护也许是更好的选择。
```

![](http://user-gold-cdn.xitu.io/2020/5/4/171e01af25f704cd?w=2206&h=1024&f=png&s=261719)

---

##### 3. 如何运行和打包

- 获取依赖包: `flutter pub get`
- 运行命令: `flutter run -d macos`， 或直接通过`AndroidStudio` 选择设备运行

![](http://user-gold-cdn.xitu.io/2020/5/4/171e02c9d5ac5a77?w=1350&h=416&f=png&s=201897)

---


- 打包macos: `flutter build macos`,在`build/macos/Build/Release`中可以看到应用


![](http://user-gold-cdn.xitu.io/2020/5/4/171e053343d30233?w=1938&h=710&f=png&s=232963)

---

#### 二、. FlutterUnit mac 功能简述

> 由于mac端录屏出的gif太大了，就不放动图了，所有功能同`移动端`  
使用详情可参见: [【 FlutterUnit 食用指南】 开源篇](https://juejin.im/post/5e94e4d3f265da480836b943)  
本文会说一下我做FlutterUnit mac端的原因和一些界面的变动。

---

##### 1. FlutterUnit主页界面

- 对于桌面来说，最麻烦的当属`导航栏`了，如果直接用底栏或顶栏，那会非常丑  
- 通常需要左栏，当然这些对于`动手能力超强`的我，都是小菜。`有就用，没有就造。`
- 桌面程序`一般都很宽`,可以用GridView根据情况分多栏显示item,这样会好看些。

![](http://user-gold-cdn.xitu.io/2020/5/5/171e06fe81830630?w=1604&h=1248&f=png&s=1102121)

---

##### 2. 左滑菜单栏

- 单击`右侧导航栏底部的设置`可以打开左侧的菜单
- 也可以通过`左边滑`来打开左侧的菜单，菜单内容保持一致，功能保持一致

![](http://user-gold-cdn.xitu.io/2020/5/5/171e07714a69ec75?w=1606&h=1248&f=png&s=1020192)

---

##### 3. 组件详情页

- 调整`相关组件`和介绍的位置，同排显示，好看一些。

![](http://user-gold-cdn.xitu.io/2020/5/5/171e07db1d9a76ca?w=1600&h=1252&f=png&s=335520)

---

- 由于`Share插件`还不支持macos,这里`代码分享的功能直接改成代码复制`。
- 代码面板的展开功能依旧存在,可通过展开按钮进行展开。

![](http://user-gold-cdn.xitu.io/2020/5/5/171e081d559218ca?w=2538&h=1250&f=png&s=810461)

---

#####  4.收藏集功能正常

- 收藏集的`增删改查操作`和`移动端保持一致`

![](http://user-gold-cdn.xitu.io/2020/5/4/171e013c38f568ab?w=1602&h=1248&f=png&s=1280615)

![](http://user-gold-cdn.xitu.io/2020/5/5/171e0870a24a708a?w=1596&h=1252&f=png&s=1023631)


![](http://user-gold-cdn.xitu.io/2020/5/5/171e08b3a4b4230d?w=1608&h=1246&f=png&s=1117612)


![](http://user-gold-cdn.xitu.io/2020/5/5/171e08b52b960bbe?w=1616&h=1256&f=png&s=1145558)


---

##### 5. 组件详情页的添加收藏

> 功能保持一致

![](http://user-gold-cdn.xitu.io/2020/5/5/171e08d2c31a7c44?w=1608&h=1262&f=png&s=623031)

![](http://user-gold-cdn.xitu.io/2020/5/5/171e08e573eb1217?w=1606&h=1248&f=png&s=341068)


---

##### 6. 搜索页

- 模糊查询

![](http://user-gold-cdn.xitu.io/2020/5/5/171e090788946055?w=1606&h=1262&f=png&s=401087)

- 星级查询

![](http://user-gold-cdn.xitu.io/2020/5/5/171e090303d1f3af?w=1602&h=1258&f=png&s=465011)


> 其实适配到macos我就花了小半天的时间。主要就是主页右边栏的设计和实现。  
这也得益于项目的清晰，我知道哪些文件是干嘛的，所以抽离是很重要的，酌情抽出变量、方法或类，不要什么东西都塞在一起，一旦代码变动就是灭顶之灾。另外bloc维护的业务逻辑可以丝毫不动，只需将相关页面的一些结构进行调整即可，这也是bloc的优势。

---```