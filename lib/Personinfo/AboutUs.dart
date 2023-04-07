import 'DetectUpdates.dart';
import 'PrivacyPolicy.dart';
import 'package:flutter/material.dart';

import 'AboutContact.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.message),
            title: Text('隐私政策'),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('该功能暂时不能使用'),
                      ));
            },
          ),
          Divider(
            height: 10.0,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('检测更新'),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>DetectUpdates()));
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('该功能暂时不能使用'),
                      ));
            },
          ),
          Divider(
            height: 10.0,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('联系我们'),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutContact()));
            },
          ),
          Divider(
            height: 10.0,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('分享给朋友'),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('该功能暂时不能使用'),
                      ));
            },
          ),
          Divider(
            height: 10.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
