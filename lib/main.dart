import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/bottombar.dart';
import 'package:instagram_app/post.dart';
import 'package:instagram_app/stories.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff8faf8),
          leading: IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () {},
              color: Colors.black87),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.live_tv),
                onPressed: () {},
                color: Colors.black87),
            IconButton(
                icon: Icon(Icons.send), onPressed: () {}, color: Colors.black87)
          ],
          title: Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'Instagram', fontSize: 26, color: Colors.black87),
          ),          
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            Stories(),
            Post(),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
