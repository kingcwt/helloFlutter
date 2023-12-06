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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('注册第二步'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/registerThird');
                  // 替换路由跳转 跳转到注册第三步之后 返回的时候 可以跳过当前页面 直接到第一步  [其实相当于把第三个页面放到当前页面 路由替换 返回就直接到注册第一步]
                  Navigator.of(context).pushReplacementNamed('/registerThird');
                },
                child: const Text('下一步')),
          ]),
        ));
  }
}
