import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List listData = [
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1561152092-12f18f8a222a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'title': '图片1',
      'key': '1',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1445964047600-cdbdb873673d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1156&q=80',
      'title': '图片2',
      'key': '2',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1462275646964-a0e3386b89fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80',
      'title': '图片3',
      'key': '3',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1561152092-12f18f8a222a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'title': '图片4',
      'key': '4',
    }
  ];

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      var index = value['key'];
      var tag = 'hero_$index';

      return (GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/hero', arguments: {
            "imageUrl": value['imageUrl'],
            'title': value['title'],
            'heroTag': tag
          });
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
          child: Column(children: <Widget>[
            Hero(tag: tag, child: Image.network(value['imageUrl'])),
            const SizedBox(
              height: 10,
            ),
            Text(value['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16))
          ]),
        ),
      ));
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        children: _getListData());
  }
}
