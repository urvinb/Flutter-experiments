/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Widget> score=[];
  List<bool> ans=[false,true,false,true];
  int qnum=0;
  List<String> questions=[
    "The IPL began in 2009.",
    "First ODI (Cricket) in India was played in Ahemadabad.",
    "The first captain of the first ODI Indian team was Sunil Gavaskar..",
    " "
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(questions[qnum],textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
                    )
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){
                      bool correctAns=ans[qnum];
                      if (correctAns==true) {
                        score.add(Icon(
                          Icons.check, color: Colors.lightGreen,
                        )
                        );
                      }else{
                        score.add(
                          Icon(
                            Icons.close,color: Colors.redAccent,
                          ),
                        );
                      }
                      setState(() {
                        qnum+=1;
                      });
                    },
                    color: Colors.green,
                    child: Text('True'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){
                      bool correctAns=ans[qnum];
                      if (correctAns==true) {
                        score.add(Icon(
                          Icons.check, color: Colors.lightGreen,
                        )
                        );
                      }else{
                        score.add(
                          Icon(
                            Icons.close,color: Colors.redAccent,
                          ),
                        );
                      }
                      setState(() {
                        qnum+=1;
                      });
                    },
                    color: Colors.red,
                    child: Text('False'),
                  ),
                ),
              ),
              Row(
                children: score,
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizBrain.dart';
// import 'QnA.dart';

QuizBrain qb=QuizBrain();

void main() {
  runApp(Quiz());
}
class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: OopsConcept(),),
        ),
      ),
    );
  }
}

class OopsConcept extends StatefulWidget {
  @override
  _OopsConceptState createState() => _OopsConceptState();
}

class _OopsConceptState extends State<OopsConcept> {
  List<Widget> score=[];
  List<bool> ans=[true,false,true];
//  List<String> questions=[
//    "Everything in Flutter is Widget",
//    "Flutter is based on Java Prog lang",
//    "Widgets in flutter are categorized as Stateful and Stateless"
//  ];
//  QnA q1=QnA(q:"Everything in Flutter is Widget",a:true);

//List <QnA>questionBank=[
//  QnA(q:"Everything in Flutter is Widget",a:true),
//  QnA(q:"Flutter is based on Java Prog lang",a:false),
//  QnA(q:"Widgets in flutter are categorized as Stateful and Stateless",a:true),
//];

  void alertmsg(ttl, d, txt){
    Alert(
      context: context,
      title: ttl,
      desc: d,
      buttons: [
        DialogButton(
          child: Text(
            txt,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }

  void check(bool yourAnswer){
    bool correctAns=qb.getAnswer();
    setState(() {
      if(yourAnswer == correctAns){
        qb.addscore();
      }
      if(qb.isFinished()==true){
        qb.resetqnumb();
        alertmsg('Done!', qb.getscore() ,'Start Again');
      }else{
        qb.nextquestion();
      }
      if (yourAnswer==correctAns) {
          score.add(Icon(
            Icons.check, color: Colors.lightGreen,
            ),
          );
          alertmsg('Correct!!', 'You\'re killing it!!.', 'Next');
        }else {
          score.add(
            Icon(
              Icons.close,
              color: Colors.redAccent,
            ),
          );
          alertmsg('Incorrect!!', 'No worries!! Now you know the correct answer..', 'Cool');
        }
        if(qb.isStart()==true){
          score=[];
          qb.resetscore();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(qb.getQuestion(),textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(color: Colors.green,
              child: Text("True",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,color: Colors.white),
              ),
              onPressed: (){
                check(true);
              },
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red,
              child: Text("False",
                textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white),
              ),
              onPressed: (){
                check(false);
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}