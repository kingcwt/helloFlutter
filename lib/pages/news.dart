import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({super.key, this.title = '详情'});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    print(widget.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text('新闻页面${widget.title}'),
        ));
  }
}
