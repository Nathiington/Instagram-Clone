import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/noti.dart';
import 'pages/explore.dart';
import 'pages/profile.dart';
import 'pages/upload.dart';
import 'package:flutter/cupertino.dart';
//import 'package:instagram/models/global.dart';
//import 'models/appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primaryColorLight: Colors.lightBlue,
        primaryColorDark: Colors.black,
        primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [HomePage(), Explore(), Upload(), Noti(), Profile()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.photo_camera),
              onPressed: () {
                Text('Camera');
              }
            
            ),
          title: Text('Insta'),
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       offset: Offset(10, 10)
          //     )
          //   ]
          // ),
          margin: EdgeInsets.only(bottom: 20),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(CupertinoIcons.home),
              ),
              Tab(
                icon: Icon(CupertinoIcons.search),
              ),
              Tab(
                icon: Icon(CupertinoIcons.add_circled),
              ),
              Tab(
                icon: Icon(CupertinoIcons.heart),
              ),
              Tab(
                icon: Icon(CupertinoIcons.profile_circled),
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
