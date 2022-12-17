import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

/* void main() {
  runApp(MyTestingApp());
} */ //this is the function that kicks off the app -> always void main ()

void main() => runApp(MyTestingApp());

class MyTestingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTestingAppState();
  }
}

class _MyTestingAppState extends State<MyTestingApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override //makes clear that we overrides the build method
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color',
      'what is your favorite animal'
    ];
    //Needs Type and Context
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')), //appbar
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          Answers(_answerQuestion),
          Answers(_answerQuestion),
          Answers(_answerQuestion),
        ]),
      ),
    ); //receive the named arguments
  }
}
