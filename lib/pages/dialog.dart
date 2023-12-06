import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DiaLogPage extends StatefulWidget {
  const DiaLogPage({super.key});

  @override
  State<DiaLogPage> createState() => _DiaLogPageState();
}

class _DiaLogPageState extends State<DiaLogPage> {
  void _alertDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('提示'),
              content: const Text('这是一个对话框'),
              actions: [
                TextButton(
                    onPressed: () {
                      print('点击了取消');
                      Navigator.of(context).pop('cancel');
                    },
                    child: const Text('取消')),
                TextButton(
                    onPressed: () {
                      print('点击了确定');
                      Navigator.of(context).pop('ok');
                    },
                    child: const Text('确定'))
              ]);
        });

    print('res = $res');
  }

  void _simpleDialog() {
    showDialog(
        barrierDismissible: true, // 默认为true 就是可以点击空白处关闭 false 点击空白处不能关闭
        context: context,
        builder: (context) {
          return SimpleDialog(title: Text('请选择语言'), children: [
            SimpleDialogOption(
              onPressed: () {
                print('点击了中文');
                Navigator.pop(context, '中文');
              },
              child: const Text('中文'),
            ),
            SimpleDialogOption(
              onPressed: () {
                print('点击了英文');
                Navigator.pop(context, '英文');
              },
              child: const Text('英文'),
            ),
            SimpleDialogOption(
              onPressed: () {
                print('点击了日语');
                Navigator.pop(context, '日语');
              },
              child: const Text('日语'),
            ),
            SimpleDialogOption(
              onPressed: () {
                print('点击了韩语');
                Navigator.pop(context, '韩语');
              },
              child: const Text('韩语'),
            )
          ]);
        });
  }

  void _modelBottomSheet() async {
    var res = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 320,
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              ListTile(
                leading: const CircleAvatar(child: Icon(Icons.home)),
                title: const Text('首页'),
                onTap: () {
                  print('首页');
                  Navigator.of(context).pop('首页返回');
                },
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.abc_outlined)),
                title: Text('售出'),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.ac_unit_outlined)),
                title: Text('购买'),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.favorite_border)),
                title: Text('搜藏'),
              )
            ]),
          );
        });

    print('res = $res');
  }

  void _toastDialog() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT, // 针对安卓显示多长时间消失
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1, // 针对ios显示多长时间消失
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('对话框'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: _alertDialog,
            child: const Text('显示对话框'),
          ),
          ElevatedButton(
              onPressed: _simpleDialog,
              child: const Text('simpleDialog click')),
          ElevatedButton(
              onPressed: _modelBottomSheet,
              child: const Text('modelBottomSheet click')),
          ElevatedButton(
              onPressed: _toastDialog, child: const Text('flutterToast click'))
        ],
      )),
    );
  }
}
