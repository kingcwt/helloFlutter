import 'package:flutter/material.dart';
import 'package:flutter2/pages/registerFirst.dart';
import 'package:get/get.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/login');
              Get.toNamed('/login');
            },
            child: const Text('登录')),
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/registerFirst');

              // off 就是调整之后 上面没有返回的箭头 跳转指定页面 没有返回按钮
              Get.off(const RegisterFirstPage());
            },
            child: const Text('注册')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
            child: const Text('go to DialogPage')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
            child: const Text('自定义dialog')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageview');
            },
            child: const Text('PageView演示')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageviewbuilder');
            },
            child: const Text('PageViewBuilder演示')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageviewfullpage');
            },
            child: const Text('pageviewfullpage')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageviewswiper');
            },
            child: const Text('pageviewswiper')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageviewkeepalive');
            },
            child: const Text('pageviewkeepalive')),
      ]),
    );
  }
}
