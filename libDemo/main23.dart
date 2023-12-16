import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: const MyBodyContainer(),
    ),
  ));
}

class MyBodyContainer extends StatelessWidget {
  const MyBodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Row(
          children: [
            Text(
              '热搜',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Divider(
          color: Colors.black54,
        ),
        Wrap(
          spacing: 10,
          children: [
            MyButton(
              '女装',
              onPressed: () {},
            ),
            MyButton(
              '家电',
              onPressed: () {},
            ),
            MyButton(
              '男装',
              onPressed: () {},
            ),
            MyButton(
              '笔记本',
              onPressed: () {},
            ),
            MyButton(
              '手机',
              onPressed: () {},
            ),
            MyButton(
              '日用品',
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 14),
        const Row(
          children: [
            Text(
              '历史记录',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.black54,
            ),
            Text(
              '男装',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Divider(
              color: Colors.black54,
            ),
            Text(
              '冬季穿搭',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Divider(
              color: Colors.black54,
            ),
            Text(
              '工装',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Divider(
              color: Colors.black54,
            )
          ],
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.delete),
            label: const Text('清空历史记录'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black45)),
          ),
        )
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  MyButton(this.text, {Key? key, required onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 195, 192, 192)),
        foregroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 45, 41, 41)),
      ),
      child: Text(text),
    );
  }
}
