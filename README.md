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