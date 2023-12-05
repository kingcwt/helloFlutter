import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: const Text('跳转搜索页面')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/form');
                },
                child: const Text('跳转form页面')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/form',
                      arguments: {"title": "我是命名传值的title"});
                },
                child: const Text('命名路由传值')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/news');
                },
                child: const Text('跳转news页面'))
          ],
        ),
      ),
    );
  }
}
