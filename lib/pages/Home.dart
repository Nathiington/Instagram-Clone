import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool liked = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
   /********Card Builder**************** */ //final items = List<String>.generate(50, (i) => "Item $i");

    return ListView.builder(
      // This next line does the trick.
     /********Card Builder**************** */// itemCount: items.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
         /********Card Builder**************** */// key: Key(items[index]),

          /***************************CARD***********************/
          children: <Widget>[
            /**************STORY******************************/
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
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
                          )), //

                      Text('Follower', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
            /*******************END STORY*****************************/

            /*********************USERPICTURE,USERNAME MORE ROW**********************/
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Container(
                height: 60.0,
                margin: EdgeInsets.only(right: 20, left: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              Text(
                'Reeeeeed',
                style: TextStyle(color: Colors.white),
              ),
              Padding(padding: EdgeInsets.only(right: 250)),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ]),
            /***************************End User************************************* */
            /***************************image***********************/
            Card(
              elevation: 3,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 420,
                      child: Image.asset('pics/pic.jpg'),
                      // onDoubleTap: () => _pressed(),
                    ),
                  ]),
            ),
            /**************************End Image*********************************/
            /**********************Like Row*****************************/
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 5)),
              IconButton(
                icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
                    color: liked ? Colors.red : Colors.white),
                onPressed: () => _pressed(),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.comment_outlined),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.only(left: 8)),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.send_outlined),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.only(left: 5, right: 205)),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.bookmark_outline),
                onPressed: () {},
              ),
            ]//

            ),
            /************************End Like*****************************/
          ],
          /**********************End Card*********************/
          
        );
      },
    );
  }
}
