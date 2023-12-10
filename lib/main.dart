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
        body: Stack(
          children: [
            ListView(
              children: const [ListTile(title: Text('我是一个列表'))],
            ),
            Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: AnimatedContainer(
                  transform: flag
                      ? Matrix4.translationValues(-200, 0, 0)
                      : Matrix4.translationValues(0, 0, 0),
                  duration: const Duration(milliseconds: 600),
                  width: 200,
                  height: double.infinity,
                  color: flag ? Colors.red : Colors.blue,
                ))
          ],
        ));
  }
}
