import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple), // 去掉右上角的debug图标
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 当组件初始化的时候触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu), onPressed: () {}), // 左侧的按钮图标
        backgroundColor: Colors.red,
        title: const Text('flutter App'),
        actions: [
          // 右侧的按钮图标
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {})
        ],
        bottom: TabBar(
            isScrollable: true, // 是否可以滚动
            controller: _tabController,
            indicatorColor: Colors.blue, // 指示器颜色
            indicatorWeight: 2, // 指示器高度
            indicatorSize: TabBarIndicatorSize.tab, // label/ 指示器大小
            labelColor: Colors.white, // 选中文字颜色
            labelStyle: const TextStyle(
              fontSize: 18,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
            ),
            unselectedLabelColor: Colors.black, // 未选中文字颜色
            indicatorPadding: const EdgeInsets.all(5), // 指示器内边距
            indicator: BoxDecoration(
                // // 设置tab文字的背景样式 这里设置字体背景颜色
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)),
            tabs: const [
              Tab(
                child: Text('关注'),
              ),
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('视频'),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: const [
            ListTile(title: Text('我是关注列表')),
            ListTile(title: Text('我是关注列表')),
            ListTile(title: Text('我是关注列表')),
            ListTile(title: Text('我是关注列表')),
            ListTile(title: Text('我是关注列表')),
          ],
        ),
        ListView(
          children: const [
            ListTile(title: Text('我是热门列表')),
          ],
        ),
        ListView(
          children: const [
            ListTile(title: Text('我是视频列表')),
          ],
        )
      ]),
    );
  }
}
