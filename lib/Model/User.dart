class User {
  String id;        //编号
  String name;      //学生姓名
  String email;     //学生的邮箱
  String user_id;   //学生的学号
  String org_name;  //学校
  String major_name;//专业

  User({
    this.id,        //编号
    this.name,      //学生姓名
    this.email,     //学生的邮箱
    this.user_id,   //学生的学号
    this.org_name,  //学校
    this.major_name,//专业
  });

  User.fromJson(Map<String, dynamic> json) {
    id=json['_id'];
    name=json['name'];
    email=json['email'];
    user_id=json['user_id'];
    org_name=json['org_name'];
    major_name=json['major_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['user_id'] = this.user_id;
    data['org_name'] = this.org_name;
    data['major_name'] = this.major_name;
    return data;
  }
}