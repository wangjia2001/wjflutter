import 'package:flutter/material.dart';
import 'Preview.dart';
import 'Class.dart';
import 'Test.dart';
import 'Homework.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart'; //导入chewie依赖

class ThemeColors {
  ///纯黑色
  static Color colorBlack1 = Colors.blue[100];
  static Color colorBlack2 = Colors.white;
  static Color colorBlack3 = Colors.white;
  static Color colorBlack4 = Colors.white;
  // static Color colorBlack4 = Color.fromARGB(255, 0, 0, 0);
}

class HomePage extends StatefulWidget {
  // HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _smallItem = [Preview(), Class(), Homework(), Test()];
  // List _smallItem = [Preview(), Class()];
  var _smallIndex = 0;

  VideoPlayerController _controller;
  ChewieController chewieController;

  String url = 'http://10.8.51.45:8000/live?port=1935&app=live&stream=1304';
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(this.url);
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      aspectRatio: 16 / 9,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () => {
            setState(() {
              _smallIndex = 0;
              ThemeColors.colorBlack1 = Colors.blue[100];
              ThemeColors.colorBlack2 = Colors.white;
              ThemeColors.colorBlack3 = Colors.white;
              ThemeColors.colorBlack4 = Colors.white;
            }),
            Navigator.of(context).pop('刷新')
          },
        ),
      ),
      body: new Column(
        children: <Widget>[
          //视频
          new Container(
            child: Chewie(
              controller: chewieController,
            ),
            alignment: AlignmentDirectional.topCenter,
            height: MediaQuery.of(context).size.height / 4,
          ),
          new Container(
            height: MediaQuery.of(context).size.height / 17,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 5),
                Container(
                  height: 50,
                  width: (MediaQuery.of(context).size.width - 25) / 4,
                  child: RaisedButton(
                      color: ThemeColors.colorBlack1,
                      child: new Text('预习'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        setState(() {
                          _smallIndex = 0;
                          ThemeColors.colorBlack1 = Colors.blue[100];
                          ThemeColors.colorBlack2 = Colors.white;
                          ThemeColors.colorBlack3 = Colors.white;
                          ThemeColors.colorBlack4 = Colors.white;
                        });
                      }),
                ),
                SizedBox(width: 5),
                Container(
                  height: 50,
                  width: (MediaQuery.of(context).size.width - 25) / 4,
                  child: RaisedButton(
                    color: ThemeColors.colorBlack2,
                    child: new Text('课堂'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      setState(() {
                        _smallIndex = 1;
                        ThemeColors.colorBlack2 = Colors.blue[100];
                        ThemeColors.colorBlack1 = Colors.white;
                        ThemeColors.colorBlack3 = Colors.white;
                        ThemeColors.colorBlack4 = Colors.white;
                      });
                    },
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 50,
                  width: (MediaQuery.of(context).size.width - 25) / 4,
                  child: RaisedButton(
                    color: ThemeColors.colorBlack3,
                    child: new Text('作业'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      setState(() {
                        _smallIndex = 2;
                        ThemeColors.colorBlack3 = Colors.blue[100];
                        ThemeColors.colorBlack2 = Colors.white;
                        ThemeColors.colorBlack1 = Colors.white;
                        ThemeColors.colorBlack4 = Colors.white;
                      });
                    },
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 50,
                  width: (MediaQuery.of(context).size.width - 25) / 4,
                  child: RaisedButton(
                    color: ThemeColors.colorBlack4,
                    child: new Text('考试'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      setState(() {
                        _smallIndex = 3;
                        ThemeColors.colorBlack4 = Colors.blue[100];
                        ThemeColors.colorBlack2 = Colors.white;
                        ThemeColors.colorBlack3 = Colors.white;
                        ThemeColors.colorBlack1 = Colors.white;
                      });
                    },
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(16.0),
            child: _smallItem[_smallIndex],
          ),
        ],
      ),
    );
  }

  @override
  //返回主界面时关闭视频
  void dispose() {
    _controller.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
