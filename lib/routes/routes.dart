import 'package:flutter/material.dart';
import 'package:flutter2/pages/dialog.dart';
import 'package:flutter2/pages/login.dart';
import 'package:flutter2/pages/pageViewBuilder.dart';
import 'package:flutter2/pages/pageViewFullPage.dart';
import 'package:flutter2/pages/pageViewKeepAlive.dart';
import 'package:flutter2/pages/pageViewSwiper.dart';
import 'package:flutter2/pages/pageview.dart';
import 'package:flutter2/pages/registerFirst.dart';
import 'package:flutter2/pages/registerSecond.dart';
import 'package:flutter2/pages/registerThird.dart';
import '../pages/tabs.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/hero.dart';

//MaterialPageRoute => CupertinoPageRoute 可以统一在安卓设备使用ios左右滑动的效果
// import 'package:flutter/cupertino.dart';

// 1 配置路由
final Map routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const SearchPage(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/news': (context) => const NewsPage(title: '新闻详情-命名路由'),
  '/login': (context) => const LoginPage(),
  '/registerFirst': (context) => const RegisterFirstPage(),
  '/registerSecond': (context) => const RegisterSecoundPage(),
  '/registerThird': (context) => const RegisterThirdPage(),
  '/dialog': (context) => const DiaLogPage(),
  '/pageview': (context) => const MyPageView(),
  '/pageviewbuilder': (context) => const PageViewBuilder(),
  '/pageviewfullpage': (context) => const PageViewFullPage(),
  '/pageviewswiper': (context) => const PageViewSwiper(),
  '/pageviewkeepalive': (context) => const PageViewKeepAlive(),
  '/hero': (context, {arguments}) => HeroPage(
        arguments: arguments,
      )
};

// 2 配置onGenerateRoute 固定写法 这个方法相当于中间件
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name; // '/search' 获取的router对象的key
  final Function? pageContentBuilder = routes[name]; // 就是后面对应的函数
  if (pageContentBuilder != null) {
    // 如果函数不存在就返回null
    if (settings.arguments != null) {
      // 如果有参数 就传入
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      // 没有参数返回
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
