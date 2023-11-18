import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/person.dart';
import './tabs/settings.dart';
import './tabs/message.dart';

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
    MessagePage(),
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
          type: BottomNavigationBarType
              .fixed, // 这个必须设置 不然颜色和图标默认显示白色 3个菜单以上需要配置type
          // iconSize: 35, // 底部菜单大小
          // fixedColor: Colors.blue, // 选中的颜色
          currentIndex: _currentIndex, // 第几个菜单选中
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
              icon: Icon(Icons.message),
              label: 'Message',
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
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
          onPressed: () => {
            setState(() {
              _currentIndex = 2;
            })
          },
          backgroundColor: _currentIndex == 2 ? Colors.purple : Colors.grey,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 浮动按钮位置
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
