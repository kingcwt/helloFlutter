import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(appBar: appBar, body: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return body;
  }
}

var body = const Center(
    child: Text(
  'Hello World!',
  textDirection: TextDirection.ltr,
  style: TextStyle(
    color: Color.fromARGB(255, 255, 68, 121),
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  ),
));

var appBar = AppBar(
  title: const Text('Fluttr Material'),
);
