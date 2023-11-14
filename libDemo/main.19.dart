/// button 详解
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: const MyBody(),
      )));
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            print('print 普遍按钮');
          },
          child: const Text('普遍按钮'),
        ),
        TextButton(
            onPressed: () {
              print('print 文本按钮');
            },
            child: const Text('文本按钮')),
        OutlinedButton(
            onPressed: () {
              print('print 线框按钮');
            },
            child: const Text('线框按钮')),
        IconButton(
          onPressed: () {
            print('print 图标按钮');
          },
          icon: const Icon(Icons.thumb_up_alt_outlined),
        ),
        const Divider(),
        ElevatedButton.icon(
            onPressed: () {
              print('print 带图标的普通按钮');
            },
            icon: const Icon(Icons.send),
            label: const Text('发送')),
        TextButton.icon(
            onPressed: () {
              print('print 带图标的文本按钮');
            },
            icon: const Icon(Icons.thumb_up_alt_outlined),
            label: const Text('点赞')),
        OutlinedButton.icon(
          onPressed: () {
            print('print 带图标的线框按钮');
          },
          icon: const Icon(Icons.thumb_down),
          label: const Text('点踩'),
        ),
        const Divider(),
        ElevatedButton(
          onPressed: () {
            print('print 带颜色的普通按钮');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red), // 背景颜色
            foregroundColor: MaterialStateProperty.all(Colors.white), // 文字颜色
          ),
          child: const Text('带颜色的普通按钮'),
        ),
        const Divider(),
        // 设置宽高的普通按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              // height: 60,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(50),
                ),
                onPressed: () {},
                child: const Text('设置宽高的普通按钮'),
              ),
            )
          ],
        ),
        // 设置圆角
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('圆角'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(const CircleBorder(
                      side: BorderSide(color: Colors.blue, width: 2)))),
              child: const Text('圆角'),
            )
          ],
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(const BorderSide(
                    color: Color.fromARGB(255, 202, 36, 24), width: 2)),
              ),
              child: const Text('边框'),
            )
          ],
        )
      ],
    );
  }
}
