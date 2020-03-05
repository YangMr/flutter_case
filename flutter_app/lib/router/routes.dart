import 'package:flutter/material.dart';

//引入主页
import '../pages/HomePage.dart';
//引入的是项目列表页面
import '../pages/ListPage.dart';


/*新闻客户端项目页面引入开始*/
import '../pages/news_project/news_welcome.dart';
/*新闻客户端项目页面引入结束*/



var routes = {
  "/" : (context)=> HomePage(),
  "/list" : (context) =>ListPage(),
  "/welcome" : (context) => NewsWelcomePage()
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};