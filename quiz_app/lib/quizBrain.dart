import 'QnA.dart';

class QuizBrain{
  int _qnumb=0;
  int _score=0;
  List <QnA>_questionBank=[
    QnA("Everything in Flutter is Widget",true),
    QnA("Flutter is based on Java Programming lang",false),
    QnA("Widgets in flutter are categorized as Stateful and Stateless",true),
  ];

  void nextquestion() {
    if (_qnumb < _questionBank.length - 1) {
      _qnumb++;
    }
  }

  void addscore(){
    _score ++;
  }

  bool isFinished(){
    if(_qnumb>=_questionBank.length-1){
      return true;
    }
    else{
      return false;
    }
  }

  bool isStart(){
    if(_qnumb == 0){
      return true;
    }
    else{
      return false;
    }
  }

  String getscore(){
    return 'Hurrayy..Your score is : ' + _score.toString();
  }

  String getQuestion(){
    return _questionBank[_qnumb].question;
  }

  bool getAnswer(){
    return _questionBank[_qnumb].answer;
  }
  void resetqnumb() {
    _qnumb = 0;
  }

  void resetscore(){
    _score = 0;
  }
}