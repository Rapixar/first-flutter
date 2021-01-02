import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green,),
    Icon(Icons.star, color: Colors.green,),
    Icon(Icons.star, color: Colors.green,),
    Icon(Icons.star_half, color: Colors.green,),
    Icon(Icons.star_border, color: Colors.green,),
  ],
);
var mainImage = Image.network("https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470228__340.jpg");
final descTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.2,
  fontFamily: "Consolas",
);

final iconsList = DefaultTextStyle.merge(style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green,),
            Text("PREP"),
            Text("MEDIUM")
          ]
        ),
       Column(
         children: [
           Icon(Icons.timer, color: Colors.green,),
           Text("TIME"),
           Text("20 - 30MINS")
         ],
       ),
       Column(
         children: [
           Icon(Icons.restaurant_outlined, color: Colors.green,),
           Text("FEEDS"),
           Text("2 - 4")
         ]
       ),
      ]
    ),
  ),
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Rapixar App")
        ),
        body: myWidget(),
      ),
    );
  }
}

final ratings = DefaultTextStyle.merge(
  child: Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            stars,
            Text("Hello, World!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Consolas",
                fontWeight: FontWeight.w800,
                fontSize: 20,
                letterSpacing: 0.5,
              ),
            ),

          ]
      )
  )
);
Widget leftColumn() {
  return Container(

    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          ratings,
          iconsList,
        ],
      )
  );
}

Widget myWidget() {
  return Center(
    child: Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      height: 500,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: mainImage),
            Container(
              width: 440,
              child: leftColumn(),
            ),
          ],
        ),
      ),
    )
  );
}