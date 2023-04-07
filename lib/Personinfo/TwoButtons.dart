import 'package:flutter/material.dart';
import '../Model/User.dart';
import 'PersonalInformation.dart';
class TwoButtons extends StatefulWidget{                //主页面下的两个按钮
  final User user;
  TwoButtons(this.user);
  @override
  _TwoButtonsState createState()=>_TwoButtonsState();
}
class _TwoButtonsState extends State<TwoButtons>{

  Widget build(BuildContext context){
    User user=widget.user;
    return Container(
      child:Row(
        children:[
          SizedBox(width: 10),
          RaisedButton(
            child: Text('个人信息'),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PersonalInformation(user)));
            },
            textColor: Colors.white,
            color: Colors.blue[200],
            elevation: 15,
          ),
          SizedBox(width: 160),      //设置组件间位置
          RaisedButton(
            child: Text('修改密码'),
            onPressed: (){
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword()));
              showDialog(context: context, builder: (context)=>AlertDialog(title:Text('该功能暂时不能使用'),));
            },
            textColor: Colors.white,
            color: Colors.blue[200],
            elevation: 15,
          ),
        ],
      ),
    );
  }
}