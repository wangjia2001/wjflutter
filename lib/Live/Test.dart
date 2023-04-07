import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.1,
      child: new Icon(Icons.people),
    );
  }
}
