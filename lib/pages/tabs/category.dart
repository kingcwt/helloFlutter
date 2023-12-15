import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../search.dart';
import '../form.dart';
import '../news.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SearchPage();
              }));
            },
            child: const Text('搜索')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const FormPage(
                  arguments: {'title': '我是命名传值的title-yyyy'},
                );
              }));
            },
            child: const Text('表单')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const NewsPage(title: '我是新闻页面详情1');
              }));
            },
            child: const Text('新闻页面动态传值-我是新闻页面详情1')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const NewsPage(title: '我是新闻页面详情2');
              }));
            },
            child: const Text('新闻页面动态传值-我是新闻页面详情2')),
        ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const NewsPage(title: '我是新闻页面详情2');
              // }));
              Get.toNamed('/form',
                  arguments: {'title': 'Get.toNamed 传值 - form'});
            },
            child: const Text('Get.toNamed 传值 - form')),
        const Divider(),
        ElevatedButton(
            onPressed: () {
              Get.toNamed('/getform', arguments: {'title': '123-----'});
            },
            child: const Text('Get-route-to getform'))
      ]),
    );
  }
}
