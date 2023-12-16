# flutterDemo1

- 启动模拟器

```shell
  open -a simulator
```
- 关闭模拟器  

```
xcrun simctl shutdown all
```

- 编译代码运行

```dart
flutter run
```
- 查看所有设备  

```dart
flutter devices

flutter run -d 设备名称
```

- 常用的快捷键

```dart
r // 终端输入r 热加载
R // 终端输入R 热重启  
p // 显示网格 掌握布局情况 很有用
o // 切换android 和 ios 预览
q // 退出预览模式 关掉模拟器  
```

- 在flutter中自定义组件就是一个类，这个类需要继承StatelessWidget/StatefullWidget  
- StatelessWidget:无状态组件
- StatefullWidget:有状态组件



- key
- 局部键(LocalKey) ValueKey ObjectKey UniqueKey
- 全局键(GlobalKey) GlobalKey GlobalObjectKey


```dart
ValueKey('1')

UniqueKey()

ObjectKey(Box(color:Colors.blue))   
```


在flutter中,key是不能重复使用的。所以key一般来做唯一标识，组件更新的时候，其状态的保存主要是通过判断`组件的类型`或者`key`值是否一致. 当各组件的类型不同的时候，类型已经足够用来区分不同的组件了，此时我们不必使用key,但是如果同时存在多个同一类型的控件，就需要使用key。   



> flutter 入门暂告段落。