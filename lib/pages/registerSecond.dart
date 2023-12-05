import 'package:flutter/material.dart';

class RegisterSecoundPage extends StatefulWidget {
  const RegisterSecoundPage({super.key});

  @override
  State<RegisterSecoundPage> createState() => _RegisterSecoundPageState();
}

class _RegisterSecoundPageState extends State<RegisterSecoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('注册页面second'),
        ),
        body: Center(
          child: Column(children: [
            const Text('注册第二步'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/registerThird');
                  Navigator.of(context).pushReplacementNamed('/registerThird');
                },
                child: const Text('下一步')),
          ]),
        ));
  }
}
