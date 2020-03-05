//引入ui库
import 'package:flutter/material.dart';
//引入路由文件
import './router/routes.dart';

//定义入口函数以及runApp方法
void main() => runApp(MyApp());
//创建MyApp组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去除页面顶部的debug
      debugShowCheckedModeBanner: false,
      //初始化路由要加载的页面
      initialRoute: "/",
      //挂载路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}