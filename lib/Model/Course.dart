class Course {
  String course_name;
  String tacher_name; //教师名称
  String time;           //第几节课
  int week;        //第几周上课
  String each_week;   //单双周
  String building_name; //上课教室

  Course(String course_name,String tacher_name,String time,String week,int each_week,String building_name ){
    String t=WhenCourse(time);
    int w=WeekConversion(week);
    String each=SinDouWeek(each_week);
    this.course_name=course_name;
    this.tacher_name=tacher_name;
    this.time=t;
    this.week=w;
    this.each_week=each;
    this.building_name=building_name;
  }
  WhenCourse(String time){             //第几节课
    if(time=='1'){
      return '第一节-第二节';
    }else if(time=='3'){
      return '第三节-第四节';
    }else if(time=='5'){
      return '第五节-第六节';
    }else if(time=='7'){
      return '第七节-第八节';
    }else if(time=='9'){
      return '第九节-第十节';
    }else if(time=='11'){
      return '第十一节-第十二节';
    }
  }
  WeekConversion(String week){        //星期转化
    if(week=='Mon'){
        // print('星期一');
        return 1;
    }else if(week=='Tues'){
      // print('星期二');
      return 2;
    }else if(week=='Wed'){
      // print('星期三');
      return 3;
    }else if(week=='Thur'){
      // print('星期四');
      return 4;
    }else if(week=='Fri'){
      // print('星期五');
      return 5;
    }else if(week=='Sat'){
      // print('星期六');
      return 6;
    }else if(week=='Sun'){
      // print('星期天');
      return 7;
    }
  }
  SinDouWeek(int each_week){    //判断单双周
    if(each_week==0){
      return '单双周';
    }else if(each_week==1){
      return '单周';
    }
  }
}
