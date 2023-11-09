import 'package:flutter/material.dart';
import 'package:flutter2/data.dart';

/// 动态数据渲染
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
  List<String> list = [];

  MyPageBody({Key? key}) : super(key: key) {
    for (var i = 0; i < mockData.length; i++) {
      list.add("我是第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(maxCrossAxisExtent: 120, children: const [
      Icon(Icons.search),
      Icon(Icons.set_meal),
      Icon(Icons.ac_unit_outlined),
      Icon(Icons.access_alarm_outlined),
      Icon(Icons.person_pin),
    ]);
  }
}
