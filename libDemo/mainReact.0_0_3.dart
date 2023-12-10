// AnimatedList 动画列表 删除和增加 FadeTransition，ScaleTransition
import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MayApp());
}

class MayApp extends StatefulWidget {
  const MayApp({super.key});

  @override
  State<MayApp> createState() => _MayAppState();
}

class _MayAppState extends State<MayApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = ['第一天', '第二天'];
  bool flag = true;
  final globalKey = GlobalKey<AnimatedListState>();

  Widget _buildItem(int index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // 执行删除元素
          _deleteItem(index);
        },
      ),
    );
  }

  void _deleteItem(index) {
    if (flag == true) {
      flag = false;
      globalKey.currentState?.removeItem(index, (context, animation) {
        var removeItem = _buildItem(index);
        list.removeAt(index); // 数组中删除数据
        // animation 从1 - 0
        return ScaleTransition(
          // opacity: animation,
          scale: animation,
          child: removeItem, // 删除的时候执行动画的元素
        );
      });

      Timer.periodic(const Duration(milliseconds: 500), (timer) {
        flag = true;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              list.add('第${list.length + 1}天');
              globalKey.currentState?.insertItem(list.length - 1);
            }),
        body: AnimatedList(
          key: globalKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, animation) {
            return FadeTransition(
                // animation 从0 - 1
                opacity: animation,
                // scale: animation,
                child: _buildItem(index));
          },
        ));
  }
}

class Box extends StatefulWidget {
  final Color color;
  const Box({super.key, required this.color});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  void run() {
    print('我是boxstate的run方法');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
            widget.color,
          )),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: Text('$_count',
              style: Theme.of(context).textTheme.headlineLarge)),
    );
  }
}
