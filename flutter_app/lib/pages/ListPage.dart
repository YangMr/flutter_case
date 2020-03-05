import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("项目列表")
      ),
      body : Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583381750547&di=ded4bd5d42d47dc1c0f821a97f4a62d6&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F17%2F09%2F06%2Fea0f550789998dc66b7c96465e229485.jpg"),
              title : Text("新闻客户端"),
              subtitle: Text("当前的项目是一个新闻类型的项目，点击可以进行查看",maxLines: 1,overflow: TextOverflow.ellipsis,),
              trailing: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583381611523&di=78cff111c730a54c07cf09f991d165cf&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F01%2F80%2F36%2F25574d73efde2c8.jpg",width: 6,),
              onTap: (){Navigator.pushNamed(context, "/welcome");},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}