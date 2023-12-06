import 'package:flutter/material.dart';
import 'package:flutter2/pages/tabs.dart';
import 'package:flutter2/pages/tabs/message.dart';
import '../pages/tabs/person.dart';

class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({super.key});

  @override
  State<RegisterThirdPage> createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('注册页面third'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('注册第三步'),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();

                // 返回根路由
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const Tabs(index: 4)),
                    (route) => false);
              },
              child: const Text('完成注册'),
            )
          ]),
        ));
  }
}
