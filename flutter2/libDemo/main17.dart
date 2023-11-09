import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter2/data.dart';

/// 右侧固定宽高 左侧自适应
void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: MyPageBody(),
      )));
}

class MyPageBody extends StatelessWidget {
  const MyPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.red,
      child: Stack(
        // Positioned 相对于 外部容器定位 如果没有外部容器 相对于屏幕
        children: [
          Positioned(
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                  child: const Text(
                    '👋',
                    style: TextStyle(fontSize: 40),
                  ))),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text(
                    '😄',
                    style: TextStyle(fontSize: 40),
                  ))),
          Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                  child: const Text(
                    '🚗',
                    style: TextStyle(fontSize: 40),
                  ))),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                  child: const Text(
                    '😄',
                    style: TextStyle(fontSize: 40),
                  )))
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  late Color color;
  late IconData icon;
  IconContainer(this.icon, {Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: color,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
