import 'package:flutter/material.dart';
import 'ClassScheduleCard.dart';
import 'Study/StudyCenter.dart';
import 'Curriculum.dart';
import '../Model/Course.dart';
import 'NullCurriculum.dart';
class CoursePage extends StatefulWidget {
  final List data;
  CoursePage(this.data);
  @override
  CoursePageState createState() => CoursePageState();
}

class CoursePageState extends State<CoursePage> {

  List data=[];
  int counter=0;              //显示星期几
  var weekday = [" ","1","2","3","4","5","6","7"];

  void initSate(){
    data=widget.data;
    super.setState(() {});
  }

  int choice(){//如果没有按按钮默认为当天课程
    if(counter==0){
      counter=int.parse(weekday[new DateTime.now().weekday]);      //当天第几周数据
    }
    return counter;
  }

  Widget loop(){        //循环做课程表下面部分
    List<Widget> tiles = [];
    Widget content;     //单独一个widget组件，用于返回需要生成的内容widget
    choice();     //得到今天星期几
    initSate();
    //从数据库中得到今天的课程数据
    if(data==null){
      print('数据为空');
      tiles.add(
        NullCurriculum(),
      );
    }else{
      print('数据不为空');   //从中得到数据
      List curriculum = [];
      String course_name;
      String tacher_name; //教师名称
      String time;           //第几节课
      String week;        //第几周上课
      int each_week;   //单双周
      String building_name; //上课教室
      for(var item in data) {      //循环做添加元素
        course_name=item['course_id']['name'];
        tacher_name=item['teacher_id']['name'];
        curriculum=item['curriculum'];        //不能直接用
        for(var i in curriculum){
          List order=[];
          week=i['date'];
          each_week=i['odd_or_even'];
          building_name=i['room_id']['building_name']+i['room_id']['room_number'].toString();
          order=i['order'];
          for(int j=0;j<order.length;j=j+2){
            time=order[j];
            Course course=new Course(course_name,tacher_name,time,week,each_week,building_name);
            if(course.week==counter){
              print("数据为:");
              print(counter);
              tiles.add(
                Curriculum(course),
              );
            }
          }
        }
      }
      if(tiles==null||tiles.length==0){     //如果titles里没有组件
        tiles.add(
          NullCurriculum(),
        );
      }
    }
    content=new Column(
        children: tiles
    );
    return content;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          ClassScheduleCard(    //课程表头部部分
            CallBack: (c){
              setState(() {
                counter=int.parse(c);
              });
             },
          ),
          SizedBox(height: 20),
          LimitedBox(         //设置最大的高度
            maxHeight: 300,
            child: ListView(
              children: <Widget>[
                Container(
                  child:loop(),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            '  学习中心',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          StudyCenter(),
        ],
      ),
    );
  }
}
