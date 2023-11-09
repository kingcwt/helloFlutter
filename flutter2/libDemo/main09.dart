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
  MyPageBody({Key? key}) : super(key: key) {
    print(mockData);
  }

  List<Widget> initList() {
    // List<Widget> list = [];
    // for (var i = 0; i < mockData.length; i++) {
    //   list.add(ListTile(
    //     title: Text("${mockData[i]['title']}"),
    //   ));
    // }

    // return list;

    var listData = mockData.map((item) {
      return ListTile(
        title: Text("${item['title']}111"),
      );
    });
    return listData.toList();
  }

  // List<Widget> _initList() {
  //   List<Widget> list = [];

  //   for (var i = 1; i < 20; i++) {
  //     list.add(ListTile(
  //       title: Text('俄罗斯从新型核潜艇试射洲际弹道导弹$i'),
  //     ));
  //   }

  //   return list;
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: initList(),
    );
  }
}
