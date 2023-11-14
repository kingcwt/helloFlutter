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
  const MyPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        width: double.infinity,
        height: double.infinity,
        child: Container(
            width: double.infinity, // 达到父元素的尺寸
            height: double.infinity,
            color: Colors.grey,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconContainer(Icons.home, color: Colors.red),
                    IconContainer(Icons.settings, color: Colors.yellow),
                    IconContainer(Icons.one_k_outlined, color: Colors.blue),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: 500,
                    height: 500,
                    color: Colors.brown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconContainer(Icons.home, color: Colors.red),
                        IconContainer(Icons.settings, color: Colors.yellow),
                        IconContainer(Icons.one_k_outlined, color: Colors.blue),
                      ],
                    )),
              ],
            )));
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
