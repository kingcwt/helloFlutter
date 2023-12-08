import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageView'),
        ),
        body: PageView(
          scrollDirection: Axis.vertical, // 滑动方向
          children: [
            Center(
              child: Text(
                '第一页',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Center(
              child: Text(
                '第二页',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Center(
              child: Text(
                '第三页',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ));
  }
}
