import 'package:flutter/material.dart';
import 'Course/CoursePage.dart';
import 'Model/Contain.dart';
import 'Personinfo/PersoninfoPage.dart';
import 'package:dio/dio.dart';
import 'Model/User.dart';
class App extends StatefulWidget {
  // App({Key key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;
  User user;
  List data = [];
  CoursePage coursePage;
  PersoninfoPage personpage;


  currentPage(User user,List data) {
    switch (_currentIndex) {
      case 0:
        if (coursePage == null) {
          coursePage = new CoursePage(data);//data
        }
        return coursePage;
      case 1:
        if (personpage == null) {
          personpage = new PersoninfoPage(user);
        }
        return personpage;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    Contain contain= ModalRoute.of(context).settings.arguments;
    user=contain.user;
    data=contain.data;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("aaa"),
      // ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          new BottomNavigationBarItem(
              title: new Text(
                '课程',
                style: TextStyle(
                    color: _currentIndex == 0
                        ? Colors.blue[200]
                        : Color(0xff999999)),
              ),
              icon: Icon(Icons.book)),
          new BottomNavigationBarItem(
              title: new Text(
                '我的',
                style: TextStyle(
                    color: _currentIndex == 1
                        ? Colors.blue[200]
                        : Color(0xff999999)),
              ),
              icon: Icon(Icons.account_box_rounded)),
        ],
      ),
      body: currentPage(user,data),
    );
  }

}
