import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(100, (i) => "Item $i");

    return ListView.builder(
      // This next line does the trick.
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Dismissible(
           key: Key(items[index]),
           child:Card(
              elevation: 3,
              child: Row(
              children: <Widget>[


             Container(
                height: 360.0,
               child: Text('Bora Bora'),
                 margin: EdgeInsets.symmetric(
                 vertical: 5.0 /*,horizontal: 10.0*/), //Adds a horizontal margin
             ),
/******ADJUSTING TO FIT CUSTOM IMAGE IN THE CARD CONTAINER*******/
                  Container(
                    color: Colors.red,
                   /* decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover, 
                        image: AssetImage('pics/pic.jpg')
                      ),
                    ),*/
               ),


               ]
        ),
           ),
        );
      },
    );
  }
}
