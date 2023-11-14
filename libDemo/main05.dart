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
    return ListView(children: const [
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(title: Text('我是一个列表项'), leading: Icon(Icons.book)),
      Divider(),
      ListTile(
        title: Text('我是一个列表项'),
        leading: Icon(Icons.book),
        trailing: Icon(Icons.fork_right_rounded, color: Colors.amber),
      ),
      Divider(),
    ]);
  }
}
