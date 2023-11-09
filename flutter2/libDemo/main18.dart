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

  List<Widget> loadLists() {
    List<Widget> list = [];
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(
        leading: const Icon(Icons.ac_unit, color: Colors.red),
        title: Text("我是第$i条数据"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return MyStackPositioned(loadLists);
  }
}

/// Positioned 定位实现
class MyStackPositioned extends StatelessWidget {
  final List<Widget> Function() loadLists;

  const MyStackPositioned(this.loadLists, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.fromLTRB(0, 44, 0, 0),
          children: loadLists(),
        ),
        Positioned(
          width: size.width,
          height: 44,
          left: 0,
          top: 0,
          child: Row(children: [
            Container(
              alignment: Alignment.center,
              width: size.width,
              height: 44,
              color: Colors.black,
              child: const Text(
                '二级导航',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
        )
      ],
    );
  }
}

/// Flex 布局
class MyStack extends StatelessWidget {
  final List<Widget> Function() loadLists;

  const MyStack(this.loadLists, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: loadLists(),
        ),
        Row(children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 44,
                color: Colors.black,
                child: const Text(
                  '二级导航',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ])
      ],
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
