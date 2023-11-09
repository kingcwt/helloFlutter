/// card
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
    return ListView(
      children: const [
        Card(
          elevation: 2,
          color: Colors.purpleAccent,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'kingcwt',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text(
                  '高级软件开发工程师',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '电话：10086',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  '地址：北京市朝阳区三里屯',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'kingcwt',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text(
                  '高级软件开发工程师',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '电话：10086',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  '地址：北京市朝阳区三里屯',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
