import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // 监听 _tabController 的 index 改变
    _tabController.addListener(() {
      // print(_tabController.index); // 执行两次index打印

      // 这里可以监听执行一次 来做一些事
      if (_tabController.animation!.value == _tabController.index) {
        // print(_tabController.index);
      }
    });
  }

// 组件销毁触发  销毁_tabController  组件周期方法
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    print('组件销毁');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            title: SizedBox(
                height: 30,
                child: TabBar(
                    onTap: (index) {
                      // 只能监听点击事件 无法监听滑动事件
                      print(index);
                    },
                    labelStyle: const TextStyle(
                      fontSize: 14,
                    ),
                    isScrollable: true,
                    indicatorColor: Colors.red, // 底部指示器的选中颜色
                    labelColor: Colors.red, // 未选中的文字颜色
                    unselectedLabelColor: Colors.black, // 选中的文字颜色
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    tabs: const [
                      Tab(child: Text('生活')),
                      Tab(child: Text('财经')),
                      Tab(child: Text('养生')),
                      Tab(child: Text('游戏')),
                      Tab(child: Text('娱乐')),
                      Tab(child: Text('体育')),
                      Tab(child: Text('关注')),
                      Tab(child: Text('热门')),
                    ])),
          )),
      body: TabBarView(controller: _tabController, children: [
        ListView(children: const [
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活23d'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活123'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活123'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活qwd'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活awd'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活awd5'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活4wad'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活3wd'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活2111'),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('生活111111'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('hello flutter'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('while study flutter'),
          ),
          ListTile(
            leading: Icon(Icons.access_time_filled),
            title: Text('while study flutter'),
          ),
          ListTile(
            leading: Icon(Icons.access_time_filled),
            title: Text('11while study flutter'),
          ),
        ]),
        const Center(child: Text('财经')),
        const Center(child: Text('养生')),
        const Center(child: Text('游戏')),
        const Center(child: Text('娱乐')),
        const Center(child: Text('体育')),
        const Center(child: Text('关注')),
        const Center(child: Text('热门')),
      ]),
    );
  }
}
