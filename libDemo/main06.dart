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
    return ListView(children: [
      ListTile(
        leading: Image.network(
          'https://gdb.voanews.com/01000000-0a00-0242-27e1-08dbde25fd2d_w1023_r1_s.jpg',
        ),
        title: const Text('俄罗斯从新型核潜艇试射洲际弹道导弹'),
        subtitle: const Text('俄罗斯从新型核潜艇试射洲际弹道导弹'),
      ),
      const Divider(),
      ListTile(
        leading: Image.network(
          'https://gdb.voanews.com/01000000-0a00-0242-a465-08db7bf919df_w1023_r1_s.jpg',
        ),
        title: const Text('普京本周将访华会习近平 加深中俄“无上限”伙伴关系'),
        subtitle: const Text('普京本周将访华会习近平 加深中俄“无上限”伙伴关系'),
      ),
      const Divider(),
      ListTile(
        leading: Image.network(
          'https://gdb.voanews.com/01000000-c0a8-0242-642c-08dbdd860cca_w1023_r1_s.jpg',
        ),
        title: const Text('泽连斯基请求美国提供更多援助，邀请特朗普去基辅近处观看战争'),
        subtitle: const Text('泽连斯基请求美国提供更多援助，邀请特朗普去基辅近处观看战争'),
      )
    ]);
  }
}
