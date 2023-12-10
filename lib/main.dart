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
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.purple,
            alignment: Alignment.center,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(
                  fontSize: flag ? 20 : 40,
                  color: flag ? Colors.white : Colors.yellow),
              child: const Text('Hello World!'),
            ),
          ),
        ));
  }
}
