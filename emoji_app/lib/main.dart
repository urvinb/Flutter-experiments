import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(EmojiApp());
}


class EmojiApp extends StatefulWidget {
  @override
  _EmojiAppState createState() => _EmojiAppState();
}

class _EmojiAppState extends State<EmojiApp> {

  int leftEmoji = 1, rightEmoji = 12;
  void changeEmojiRight() {
    setState(() {
      // leftEmoji = Random().nextInt(12) + 1;
      rightEmoji = Random().nextInt(12) + 1;
    });
  }
  void changeEmojiLeft(){
    setState(() {
      leftEmoji = Random().nextInt(12)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text("Emoji App"),
          backgroundColor: Colors.black38,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    changeEmojiLeft();
                  },
                  child: Image.asset(
                    "images/emoji$leftEmoji.jpg",
                    height: 200,
                    width: 180,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    changeEmojiRight();
                  },
                  child: Image.asset(
                    "images/emoji$rightEmoji.jpg",
                    height: 200,
                    width: 180,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
