import 'package:flutter/material.dart';

class Homework extends StatelessWidget {
  const Homework({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.1,
      child: new Icon(Icons.home),
    );
  }
}
