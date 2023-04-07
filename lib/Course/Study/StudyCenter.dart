import 'package:flutter/material.dart';

class StudyCenter extends StatefulWidget {
  @override
  _StudyCenterState createState() => _StudyCenterState();
}

class _StudyCenterState extends State<StudyCenter> {
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 50.0, //图片大小
                    padding: EdgeInsets.all(8.0), //图片边距
                    icon: Image.asset('assets/images/course.jpg'),
                    onPressed: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyCourse()));
                      // showDialog(context: context, builder: (context)=>AlertDialog(title:Text('该功能暂时不能使用'),));
                      Navigator.pushNamed(context, '/live');
                    },
                  ),
                  Text('我的课程'),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 50.0, //图片大小
                    padding: EdgeInsets.all(8.0), //图片边距
                    icon: Image.asset('assets/images/study.jpg'),
                    onPressed: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyCourse()));
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('该功能暂时不能使用'),
                              ));
                    },
                  ),
                  Text('学习中心'),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 50.0, //图片大小
                    padding: EdgeInsets.all(8.0), //图片边距
                    icon: Image.asset('assets/images/collection.jpg'),
                    onPressed: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyCollection()));
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('该功能暂时不能使用'),
                              ));
                    },
                  ),
                  Text('我的收藏'),
                ],
              )),
        ],
      ),
    );
  }
}
