import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Container(
                color: Colors.yellow,
                height: 200,
                width: 100,
                // margin: EdgeInsets.all(20),
                // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                // margin: EdgeInsets.fromLTRB(50, 60, 55, 65),
                margin: EdgeInsets.only(left: 60, top: 70),
                padding: EdgeInsets.all(15),
                child: Text("Hello Everyone!!"),
              )
            )
        )
    );
  }
}