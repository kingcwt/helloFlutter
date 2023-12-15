// router 导航 swiper 缓存 入口文件
import 'package:flutter/material.dart';
import 'package:flutter2/pages/getForm.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/route_manager.dart';

import '../pages/tabs.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      // home: const Tabs(),
      initialRoute: '/',
      // onGenerateRoute: onGenerateRoute,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routes,
    );
  }
}
