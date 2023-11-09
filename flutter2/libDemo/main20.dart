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
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        height: 44,
        color: Colors.grey,
        child: const Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'hello flutter',
              style: TextStyle(color: Colors.white),
            ),
            Text('hello javascript', style: TextStyle(color: Colors.white))
          ],
        ));
  }
}
