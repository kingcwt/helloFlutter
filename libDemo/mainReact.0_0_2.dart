/// 通过key获取子widget的状态属性
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
  List<Widget> list = [];
  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();

  @override
  void initState() {
    super.initState();

    list = [
      Box(key: _globalKey1, color: Colors.red),
      Box(key: _globalKey2, color: Colors.yellow),
      Box(key: _globalKey3, color: Colors.blue),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            var boxState = _globalKey1.currentState as _BoxState;
            // 获取子widget的状态属性
            print(boxState._count);
            setState(() {
              boxState._count++;
            });
            // 获取子widget状态的方法
            boxState.run();

            // 获取子widget (了解)
            var boxWidget = _globalKey1.currentWidget as Box;
            print(boxWidget.color);

            // 获取子组件渲染的属性 (了解)
            var renderBox =
                _globalKey1.currentContext!.findRenderObject() as RenderBox;
            print(renderBox.size);
          },
        ),
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Box(key: _globalKey1, color: Colors.red),
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
