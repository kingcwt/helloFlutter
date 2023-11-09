/// flutter Icon
/// 自定义图标
import 'package:flutter/material.dart';
import 'package:flutter2/myFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: const MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Icon(
        Icons.home_max_outlined,
        color: Colors.yellow,
      ),
      Icon(
        Icons.search,
        color: Colors.lightBlue,
      ),
      Icon(
        Icons.person_2,
        color: Colors.pink,
      ),
      Icon(
        Icons.settings,
        color: Colors.purple,
      ),
      Icon(
        Icons.gpp_maybe_rounded,
        color: Colors.grey,
      ),
      SizedBox(
        height: 20,
      ),
      Icon(
        Icons.category,
        color: Colors.blue,
        size: 40,
      ),
      SizedBox(
        height: 40,
      ),
      Icon(
        MyFontIcon.book,
        color: Colors.red,
        size: 40,
      ),
      Icon(
        MyFontIcon.zfb,
        color: Colors.red,
        size: 40,
      ),
      Icon(
        MyFontIcon.weixin,
        color: Colors.red,
        size: 40,
      )
    ]);
  }
}
