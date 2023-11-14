import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Column(
            children: [
              Myapp(),
              MyButton(),
            ],
          ))));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: MyContainer());
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        alignment: Alignment.center, // 子元素方位：居中
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        // transform: Matrix4.translationValues(-40, 0, 0), // X Y Z 轴移动
        // transform: Matrix4.rotationY(1.45), // 旋转
        // transform: Matrix4.skewY(0.5), // 缩放
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            border: Border.all(
              color: Colors.red,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(1, 1),
                blurRadius: 100,
              )
            ],
            // 背景颜色线性渐变
            // gradient: const LinearGradient(colors: [
            //   Colors.red,
            //   Colors.blue,
            //   Colors.green,
            // ]),
            // 径向渐变
            gradient: const RadialGradient(
              center: Alignment(0.7, -0.6),
              radius: 0.2,
              colors: <Color>[
                Color(0xFFFFFF00), // yellow
                Color(0xFF0099FF), // blue
              ],
              stops: <double>[0.4, 1.0],
            )),
        child: const Text(
          '你好baby',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.all(10),
      // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text('按钮',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )),
    );
  }
}
