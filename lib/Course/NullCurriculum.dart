import 'package:flutter/material.dart';
class NullCurriculum extends StatelessWidget {      //针对当天没有课程的情况
  Widget build(BuildContext context) {
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
            child: new Text(
              "今天不上课！",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           SizedBox(height: 90),
        ],
      ),
    );
  }
}
