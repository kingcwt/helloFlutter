import 'package:flutter/material.dart';
import 'package:flutter2/tools/keepAliveWrapper.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewKeepAlive'),
        ),
        body: PageView.builder(
            scrollDirection: Axis.vertical, // 滑动方向
            itemCount: 10,
            itemBuilder: (context, index) {
              return KeepAliveWrapper(
                  child: MyContainer(num: index)); // 如果页面多 不缓存 容易耗费内存
            }));
  }
}

class MyContainer extends StatefulWidget {
  final int num;
  const MyContainer({super.key, required this.num});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    print(widget.num); //  默认数据是没有缓存 每次滑动都会执行build
    return Center(
      child: Text(
        '第${widget.num}页',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; // 返回true表示缓存页面
}
