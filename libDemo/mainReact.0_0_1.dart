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
    print(MediaQuery.of(context).orientation);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              list.shuffle(); // 对list进行排序 打乱元素顺序
            });
          },
        ),
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                ),
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
