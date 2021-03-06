import 'package:flutter/material.dart';
import 'pages/Home.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        backgroundColor: Colors.black,
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
        backgroundColor: Colors.black, //Color(0xff403f3e),
        appBar: AppBar(
          title: Text('Insta'),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: IconButton(
                icon: Icon(
                  Icons.send_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            title: getStory(),
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
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
            unselectedLabelColor: Colors.white,
            labelColor: Colors.blue,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w800,
            ),
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  Widget getStory() {
    return ListView(
      /**************STORY******************************/
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        /***Story 1***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        //Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story2***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        //  Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story3***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        //Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story4***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        //Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story5***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        // Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story5***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        // Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story5***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        // Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story5***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        // Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
        /***Story5***/
        Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            )),
        // Text('Follower', style: TextStyle(color: Colors.white)),
        /***Story****/
      ],

      /*******************END STORY Row*****************************/
    );
  }
}
