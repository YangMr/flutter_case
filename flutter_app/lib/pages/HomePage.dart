import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Color.fromRGBO(41,103,255,1),
                textColor: Colors.white,
                child: Text("项目列表"),
                onPressed:(){
                  Navigator.pushNamed(context, "/list");
                }
              ),
              RaisedButton(
                color: Color.fromRGBO(35,189,102,1),
                child: Text("Native Demo"),
                onPressed: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}