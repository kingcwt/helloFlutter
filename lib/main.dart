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

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Stack(children: [
          ListView(
            children: const [
              ListTile(
                title: Text('第一天'),
              ),
              ListTile(
                title: Text('第2天'),
              ),
              ListTile(
                title: Text('第3天'),
              )
            ],
          ),
          AnimatedPositioned(
              top: flag ? 10 : 500,
              right: flag ? 10 : 300,
              duration: const Duration(seconds: 1, milliseconds: 500),
              child: Container(
                color: Colors.blue,
                width: 60,
                height: 60,
              )),
        ]));
  }
}
