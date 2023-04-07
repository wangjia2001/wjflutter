import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  const Class({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.1,
      child: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 4,
        children: <Widget>[
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.room_outlined,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "签到",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '签到',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.assignment,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "测试",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '测试',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.how_to_reg,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "点名",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '点名',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.file_download,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "文件下载",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '文件下载',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.poll,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "投票",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '投票',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.contact_support_outlined,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "提问",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '提问',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  // Icons.pan_tool_outlined,
                  Icons.question_answer,
                  size: 48.0,
                  color: Colors.blue[100],
                ),
                tooltip: "抢答",
                onPressed: () {},
              ),
              SizedBox(height: 5),
              Text(
                '抢答',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
    // new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text('课堂'),
    //   ),
    //   body: new Icon(Icons.face),
    // );
  }
}
