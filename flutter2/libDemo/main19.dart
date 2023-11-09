import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: const MyBody(),
      )));
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyContainer();
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: const Center(child: Text('👋', style: TextStyle(fontSize: 40))),
    );
  }
}
