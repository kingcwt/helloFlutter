import 'package:flutter/material.dart';

class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({super.key});

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  final list = <Widget>[];
  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text(
          '第${i + 1}页',
          style: const TextStyle(fontSize: 60),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewFullPage'),
        ),
        body: PageView(
          scrollDirection: Axis.vertical, // 滑动方向
          children: list,
          onPageChanged: (value) {
            print(value);

            if (value + 2 == list.length) {
              setState(() {
                for (var i = 0; i < 10; i++) {
                  list.add(Center(
                    child: Text(
                      '第${list.length + 1}页',
                      style: const TextStyle(fontSize: 60),
                    ),
                  ));
                }
              });
            }
          },
        ));
  }
}
