import 'package:flutter/material.dart';
import 'login.dart';
import 'Live/HomePage.dart';
import 'AppPage.dart';
import 'Course/CoursePage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "在线课堂",
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "login": (BuildContext context) => new login(),
        '/live': (BuildContext context) => HomePage(),
      },
      home: new login(),
    ));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.blue[200],
  // scaffoldBackgroundColor: Color(0XFF8f98e0),
  scaffoldBackgroundColor: Colors.blue[50],
  cardColor: Colors.blue[200],
);
