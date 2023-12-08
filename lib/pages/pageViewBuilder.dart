import 'package:flutter/material.dart';

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({super.key});

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewBuilder'),
        ),
        body: PageView.builder(
            scrollDirection: Axis.vertical, // 滑动方向
            itemCount: 10,
            itemBuilder: (context, index) {
              return Center(
                child: Text(
                  '第${index + 1}页',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              );
            }));
  }
}
