//引入ui库
import 'package:flutter/material.dart';
//引入utils文件
import '../../common/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//创建主页组件
class NewsWelcomePage extends StatelessWidget {
  const NewsWelcomePage({Key key}) : super(key: key);

  //标题组件
  Widget _buildHeadTitle() {
    return Container(
      padding: EdgeInsets.only(top: duSetHeight(60)),
      child: Text(
        "Features",
        style: TextStyle(
          color: Color.fromARGB(255, 45, 45, 47),
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  //标题详情组件
  Widget _buildHeadDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  //设置列表组件
  Widget _buildListItem(String imageName,String info,double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: <Widget>[
          //左侧的图像
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset("assets/images/$imageName",fit: BoxFit.cover,),
          ),
          Spacer(),
          //右侧的文本
          Container(
            width: duSetWidth(195),
            height: duSetHeight(70),
            child: Text(
              info,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

   /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text("Get started"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(duSetWidth(6))),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //初始化
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 28, allowFontScaling: true);
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              //设置标题
              _buildHeadTitle(),
              //设置标题详情
              _buildHeadDetail(),

              //设置列表
              _buildListItem("feature-1.png","Compelling photography and typography provide a beautiful reading",60),
              _buildListItem("feature-2.png","Sector news never shares your personal data with advertisers or publishers",40),
              _buildListItem("feature-3.png","You can get Premium to unlock hundreds of publications",40),

              Spacer(),

              //添加底部按钮
              _buildStartButton()
            ],
          ),
        ),
      ),
    ));
  }
}
