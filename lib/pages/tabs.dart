import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/person.dart';
import './tabs/settings.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> list = const [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
    PersonPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          // unselectedItemColor: Colors.grey,
          // selectedItemColor: Colors.blue,
          // backgroundColor: Colors.amber,
          type: BottomNavigationBarType.fixed, // 这个必须设置 不然颜色和图标默认显示白色
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            )
          ]),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello World'));
  }
}
