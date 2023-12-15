import 'package:flutter/material.dart';
import '../listData.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List listData = myListData;

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      var index = value['key'];
      var tag = 'hero_$index';

      return (GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/hero', arguments: {
            "imageUrl": value['imageUrl'],
            'title': value['title'],
            'heroTag': tag,
            'key': index
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
