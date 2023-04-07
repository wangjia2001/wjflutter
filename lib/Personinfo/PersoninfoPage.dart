import 'package:flutter/material.dart';

import 'TitleSection.dart';
import 'TwoButtons.dart';
import 'AboutUs.dart';
import '../Model/User.dart';
class PersoninfoPage extends StatelessWidget {
  final User user;
  PersoninfoPage(this.user);
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //避免后续的选择
        children: <Widget>[
          Text('微课教室',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          titleSection(user.name),
          SizedBox(height: 10),
          TwoButtons(user),
          SizedBox(height: 10),
          AboutUs(),
          SizedBox(height: 10),
          ButtonTheme(
            minWidth: 50.0,
            child: new RaisedButton(
              color: Colors.black38,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("login");
              },
              child: Container(
                height: 40,
                width: 80,
                child: Text('退出登录', style: TextStyle(color: Colors.white)),
                alignment: Alignment.center,
              ),
              shape: StadiumBorder(
                side: BorderSide(
                  width: 2,
                  color: Colors.black38,
                  style: BorderStyle.solid,
                  // style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
