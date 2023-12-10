import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
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
      vsync: this, // 让程序和手机的刷新频率统一
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward();
          _controller.reverse();
          _controller.repeat();
          _controller.repeat(reverse: true);
          _controller.reset();
          _controller.dispose();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
          child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        RotationTransition(turns: _controller, child: const FlutterLogo()),
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
      ])),
    );
  }
}
