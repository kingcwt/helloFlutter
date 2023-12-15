import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'default get dialog',
                        middleText: 'dialog',
                        onConfirm: () {
                          print('onConfirm');
                          Navigator.of(context).pop();
                        },
                        onCancel: () {
                          print('onCancel');
                          Get.back();
                        });
                  },
                  child: const Text('Get.defaultDialog')),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Get.snackbar', 'Get.snackbar',
                        backgroundColor: Colors.amberAccent.withOpacity(0.5),
                        colorText: Colors.black,
                        snackPosition: SnackPosition.TOP);
                  },
                  child: const Text('Get.snackbar')),
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(Container(
                        height: 200,
                        color: Get.isDarkMode ? Colors.black87 : Colors.white,
                        child: Column(children: [
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny_outlined,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                            title: const Text('白天模式'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                            title: const Text('黑暗模式'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          )
                        ])));
                  },
                  child: const Text('Get.bottomSheet')),
            ],
          ),
        ));
  }
}
