import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetFormPage extends StatefulWidget {
  const GetFormPage({super.key});

  @override
  State<GetFormPage> createState() => _GetFormPageState();
}

class _GetFormPageState extends State<GetFormPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(Get.arguments['title']);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        appBar: AppBar(
          title: Text('表单-1${Get.arguments['title']}'),
        ),
        body: Center(
          child: Text('表单页面-2${Get.arguments['title']}'),
        ));
  }
}
