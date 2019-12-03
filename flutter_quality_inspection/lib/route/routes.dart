import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quality_inspection/main.dart';
import 'package:flutter_quality_inspection/pages/login_page.dart';
import 'package:flutter_quality_inspection/route/route_handlers.dart';

class Routes {
  static Router router;
  static String root = '/';
  static String login = '/login';
  static String home = '/home';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND!');
      return LoginPage();
    });
    router.define(
      root, handler: Handler(handlerFunc: (context, params) => MyApp()),
    );
    /**
     * router.define(routePath, handler)
     * routePath: 跳转的链接
     * handler: 获取传参和创建界面
     */
    // router.define(
    //   login, handler: Handler(handlerFunc: (context, params) => LoginPage()),
    // );
    // router.define(
    //   login, handler: Handler(handlerFunc: (context, params) {
    //     var first = params['message']?.first; // 取出传参
    //     return LoginPage(first);
    //   }),
    // );
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    Routes.router = router;
  }
}