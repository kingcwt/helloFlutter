import 'package:flutter/material.dart';
import 'package:flutter2/controllers/counter.dart';
import 'package:flutter2/pages/binding/binding.dart';
import 'package:flutter2/pages/detail.dart';
import 'package:get/get.dart';
import './pages/Animal.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyHomePage(),
    initialBinding: AllControllerBinding(), // 全局初始化controller
    getPages: [
      GetPage(
        name: '/detail',
        page: () => const DetailPage(),
        // transition: Transition.fadeIn
      ),
    ],
  ));
}

class MyHomePage extends StatelessWidget {
  final RxInt count = 0.obs;
  final RxString username = 'chris'.obs;
  final RxList list = ['chrlist'].obs;
  var a = Animal('chr', 18).obs;

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 创建控制器实例
    CounterController counterController = Get.find<CounterController>();
    print(counterController.count);
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    '${counterController.count}',
                    style: const TextStyle(fontSize: 40),
                  )),
              const Divider(),
              Obx(() => Text(
                    '${count.value}',
                    style: const TextStyle(fontSize: 30),
                  )),
              Obx(() => Text(
                    username.value,
                  )),
              const Divider(),
              Obx(() => Text(
                    '${a.value.username}------${a.value.age}',
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/detail');
                  },
                  child: const Text('调整详情页面')),
              const Divider(),
              Obx(() {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list
                      .map((element) => Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black.withOpacity(0.1),
                            margin: const EdgeInsets.all(2),
                            child: ListTile(
                              leading: const Icon(Icons.abc),
                              title: Text(element),
                            ),
                          ))
                      .toList(),
                );
              })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counterController.inc();
              // count.value++;
              // username.value = 'chris${count.value}';
              // list.add('chr${count.value}');

              // //
              // a.value.username = 'chr${count.value}';
              // a.value.age = count.value;
              // a.value = Animal('111', 89);
            }));
  }
}
