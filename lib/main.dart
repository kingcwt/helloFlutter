/// AnimatedContainer
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      lowerBound: 0.5,
      upperBound: 1.0,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo1'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            ScaleTransition(
              scale: _controller
                  .drive(Tween(begin: 0.5, end: 1.2)), // Tween配置 初始化 从0.5 到 1.2
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.forward(); // 播放一次
                    },
                    child: const Text('forward')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse(); // 倒序播放一次
                    },
                    child: const Text('reverse')),
                ElevatedButton(
                    onPressed: () {
                      _controller.stop(); // 停止
                    },
                    child: const Text('stop')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reset(); //  重置
                    },
                    child: const Text('reset')),
                ElevatedButton(
                    onPressed: () {
                      _controller.repeat(); //  重复播放
                    },
                    child: const Text('repeat')),
              ],
            )
          ]),
        ));
  }
}
