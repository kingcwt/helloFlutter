
import 'package:flutter/material.dart';

/// 右侧固定宽高 左侧自适应
void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const MyPageBody(),
      )));
}

class MyPageBody extends StatelessWidget {
  const MyPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        width: double.infinity,
        height: 350,
        color: Colors.blue,
      ),
      Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
                child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwt_Zr6XZ2SD6ki3IkqE3zQPcm6MMc7vdaDlCNLJVo&s',
              fit: BoxFit.cover,
            )),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
                width: 180,
                height: 180,
                child: Column(children: [
                  Expanded(
                      flex: 1,
                      child: Image.network(
                          'https://cdn3-banquan.ituchong.com/weili/ml/903056078503149583.jpeg',
                          fit: BoxFit.cover)),
                  Expanded(
                      flex: 1,
                      child: Image.network(
                          'https://imgxz.bizhi3.com/cont/20220713/hdthybr0cae.jpg',
                          fit: BoxFit.cover))
                ])),
          )
        ],
      )
    ]);
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
