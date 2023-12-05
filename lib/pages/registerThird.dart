import 'package:flutter/material.dart';

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
          child: Column(children: [
            const Text('注册第三步'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('完成注册'),
            )
          ]),
        ));
  }
}
