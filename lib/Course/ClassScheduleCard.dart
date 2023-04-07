import 'package:flutter/material.dart';

class ClassScheduleCard extends StatelessWidget {
  ClassScheduleCard({this.CallBack});
  final Function CallBack;
  String counter;

  Widget build(BuildContext context) {
    return Container(
      //课程表部分
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '壹',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '1';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '贰',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '2';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '叁',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '3';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '肆',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '4';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '伍',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '5';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '陆',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '6';
                this.CallBack(counter);
              },
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 7.1,
            child: InkWell(
              child: Text(
                '柒',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                counter = '7';
                this.CallBack(counter);
              },
            ),
          ),
        ],
      ),
    );
  }
}
