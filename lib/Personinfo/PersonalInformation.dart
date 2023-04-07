import 'package:flutter/material.dart';
import '../Model/User.dart';
import 'package:dotted_border/dotted_border.dart';

class PersonalInformation extends StatefulWidget {
  final User user;
  PersonalInformation(this.user);
  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  Widget build(BuildContext context) {
    User user = widget.user;
    String name = user.name; //学生姓名
    String emai = user.email; //学生的邮箱
    String user_id = user.user_id; //学生的学号
    String org_name = user.org_name; //学校
    String major_name = user.major_name; //专业
    // int si = 15;
    return Scaffold(
        appBar: AppBar(
          title: Text("用户信息", textAlign: TextAlign.center),
        ),
        body: Align(
            child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 7),
            // SizedBox(height: MediaQuery.of(context).size.height / 30),
            DottedBorder(
              color: Colors.black,
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              // gap: 3,
              strokeWidth: 2,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/images/info_name.png",
                            width: 35,
                            height: 35,
                          ),
                          Text('姓名：',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          SizedBox(width: 5),
                          Text('$name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ],
                      )),
                  SizedBox(height: 15),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/images/info_email.png",
                            width: 35,
                            height: 35,
                          ),
                          Text('邮箱：',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          SizedBox(width: 10),
                          Text('$emai',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ],
                      )),
                  SizedBox(height: 15),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/images/info_school.png",
                            width: 35,
                            height: 35,
                          ),
                          Text('学校：',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          SizedBox(width: 10),
                          Text('$org_name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ],
                      )),
                  SizedBox(height: 15),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/images/info_major.png",
                            width: 35,
                            height: 35,
                          ),
                          Text('专业：',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          SizedBox(width: 10),
                          Text('$major_name',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ],
                      )),
                  SizedBox(height: 15),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/images/info_number.png",
                            width: 35,
                            height: 35,
                          ),
                          Text('学号：',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          SizedBox(width: 10),
                          Text('$user_id',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ],
                      )),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        )));
  }
}
