/// ListView 里面直接加Container width 是自适应的 加width是无效的
///  Axis.horizontal, 水平设置下 height 是自适应的 加width是无效的
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: const MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
          scrollDirection: Axis.horizontal, // 水平滚动
          padding: const EdgeInsets.all(10),
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(children: [
                  SizedBox(
                    height: 80,
                    child: Image.network(
                      'https://gdb.voanews.com/01000000-0a00-0242-27e1-08dbde25fd2d_w1023_r1_s.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text('俄罗斯从新型核潜艇试射洲际弹道导弹'),
                ])),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.brown,
              ),
            ),
          ]),
    );
  }
}
