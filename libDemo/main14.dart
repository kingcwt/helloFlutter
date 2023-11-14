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
        padding: const EdgeInsets.all(4),
        width: double.infinity,
        height: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 设置宽度高度 是没有效果的 在flex下
            Expanded(
                flex: 1, child: IconContainer(Icons.home, color: Colors.red)),
            IconContainer(Icons.settings, color: Colors.yellow),
          ],
        ));
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
