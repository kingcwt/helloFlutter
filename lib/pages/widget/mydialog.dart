import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  final Function()? onTab;
  const MyDialog(
      {super.key, required this.title, required this.content, this.onTab});

  @override
  Widget build(BuildContext context) {
    return (Material(
        type: MaterialType.transparency, // 背景透明
        child: Center(
          // 这个必须有个子组件 不然全屏
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(children: [
              Stack(children: [
                Align(alignment: Alignment.centerLeft, child: Text(title)),
                Align(
                    alignment: Alignment.centerRight,
                    child:
                        InkWell(onTap: onTab, child: const Icon(Icons.close))),
              ]),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: Text(content),
              )
            ]),
          ),
        )));
  }
}
