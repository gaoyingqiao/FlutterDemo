import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quality_inspection/pages/login_page.dart';
import 'package:flutter_quality_inspection/pages/home/home_page.dart';

// 登录页面
var loginHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
    return LoginPage();
  }
);

// 首页
var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
    return HomePage();
  }
);