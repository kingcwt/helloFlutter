import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetFormMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  @override
  RouteSettings? redirect(String? route) {
    print('middleware中间件 route: $route');
    return null;
    // return const RouteSettings(name: '/login');
  }
}
