import 'package:flutter/material.dart';

var body = const Center(
    child: Text(
  'Hello World!',
  textDirection: TextDirection.ltr,
  style: TextStyle(
    color: Color.fromARGB(255, 255, 162, 68),
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  ),
));

var appBar = AppBar(
  title: const Text('Flutter Demo'),
);

void main() {
  runApp(MaterialApp(home: Scaffold(appBar: appBar, body: body)));
}
