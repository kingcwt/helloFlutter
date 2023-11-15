/// StatefulWidget 有状态组件传值
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow), home: const HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> list = [];
  onPressed() {
    setState(() {
      list.add(ListTile(title: Text('我是列表${list.length + 1}')));
    });
  }

  @override
  Widget build(BuildContext context) {
    print(list);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: MyBody(list),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  final List<Widget> list;
  const MyBody(this.list, {super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    print('12312321---${widget.list}');

    return ListView(
      children: widget.list.toList(),
    );
  }
}
