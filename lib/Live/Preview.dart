import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2.5,
        child: ListView(children: <Widget>[
          Text(
            '预习1',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习2',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习3',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习4',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习5',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习6',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习7',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习8',
            style: new TextStyle(fontSize: 25.0),
          ),
          Text(
            '预习9',
            style: new TextStyle(fontSize: 25.0),
          ),
        ]));
    // return new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text('预习'),
    //   ),
    //   body: new Icon(Icons.phone),
    // );
  }
}
