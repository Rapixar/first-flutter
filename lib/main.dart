import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

Widget myWidget() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Text("Hello, World!",),
  );

}