import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}
class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // verticalDirection: VerticalDirection.up,
            // mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.cyan,
                height: 100.0,
                //width: 300.0,
                child: Text("Container 1"),
              ),
              SizedBox(
                height: 200.0,
              ),
              Container(
                color: Colors.blue,
                height: 100.0,
                //width: 100.0,
                child: Text("Container 2"),
              ),
              SizedBox(
                height: 200.0,
              ),
              Container(
                color: Colors.green,
                height: 100.0,
                //width: 100.0,
                child: Text("Container 3"),
              ),
            ],
            // margin: EdgeInsets.all(20),
            // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            // margin: EdgeInsets.fromLTRB(50, 60, 55, 65),
            //margin: EdgeInsets.only(left: 60, top: 70),
            //padding: EdgeInsets.all(15),
            //child: Text("Hello Everyone!!"),
          ),
        ),
      ),
    );
  }
}