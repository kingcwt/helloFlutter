/// flutter Icon
/// 自定义图标
import 'package:flutter/material.dart';

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
    return ListView(padding: const EdgeInsets.all(10), children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 60,
        width: 20,
        child: const Text('俄罗斯从新型核潜艇试射洲际弹道导弹',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
      ),
      Image.network(
        'https://gdb.voanews.com/01000000-0a00-0242-a465-08db7bf919df_w1023_r1_s.jpg',
      ),
      Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 60,
        child: const Text(
          '俄罗斯从新型核潜艇试射洲际弹道导弹',
        ),
      ),
      const Divider(),
      Image.network(
        'https://gdb.voanews.com/01000000-c0a8-0242-642c-08dbdd860cca_w1023_r1_s.jpg',
      ),
    ]);
  }
}
