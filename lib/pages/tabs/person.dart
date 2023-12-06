import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('登录')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registerFirst');
            },
            child: const Text('注册')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
            child: const Text('go to DialogPage')),
      ]),
    );
  }
}
