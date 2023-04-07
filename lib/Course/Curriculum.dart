import '../Model/Course.dart';
import 'package:flutter/material.dart';
// import '../Model/Course.dart';

class Curriculum extends StatelessWidget {
  final Course course;
  Curriculum(this.course);
  Widget build(BuildContext context) {
    String course_name = course.course_name;
    String tacher_name = course.tacher_name; //教师名称
    String time = course.time; //第几节课
    int week = course.week; //第几周上课
    String each_week = course.each_week; //单双周
    String building_name = course.building_name; //上课教室
    return Container(
      margin: EdgeInsets.only(left: 5, top: 5, right: 5),
      // padding: EdgeInsets.only(left: 12, top: 5),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10.0)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(18)),
      child: new Row(
        children: [
          new Expanded(
            flex: 2,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  child: new Text(
                    "$course_name",
                    style: new TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                new Text(
                  "$time",
                  style: new TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 8),
                new Text(
                  "$building_name",
                  style: new TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          new Expanded(
            child: new Text(
              "$each_week",
              style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // SizedBox(width: 100),
          new Expanded(
            child: new Text(
              "$tacher_name",
              style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
