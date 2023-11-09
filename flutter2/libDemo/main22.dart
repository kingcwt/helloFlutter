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

  List<Widget> _getListCard() {
    List<Widget> list = [];

    for (var i = 0; i < 10; i++) {
      list.add(Card(
          elevation: 2,
          color: Colors.white,
          margin: const EdgeInsets.all(10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                "https://m.media-amazon.com/images/S/pv-target-images/0239c032814defaeb46e477629322caca6b00d2d010d64bcbdd8dd4ad5da6ad9.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://m.media-amazon.com/images/S/pv-target-images/0239c032814defaeb46e477629322caca6b00d2d010d64bcbdd8dd4ad5da6ad9.jpg'),
              ),
              title: Text(
                'xxxxxxxxxxx$i',
              ),
              subtitle: Text('xxxxxxx${i + 1}'),
            )
          ])));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _getListCard());
  }
}
