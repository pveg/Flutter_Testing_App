import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

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
  static const _questions = [
    {
      'questionText': 'what is your favorite color',
      'answers': ['red', 'blue', 'white']
    },
    {
      'questionText': 'what is your favorite animal',
      'answers': ['rabbit', 'snake', 'dog']
    },
    {
      'questionText': 'who is your favorite instructor',
      'answers': ['max', 'max', 'max']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override //makes clear that we overrides the build method
  Widget build(BuildContext context) {
    //Needs Type and Context
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')), //appbar
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    ); //receive the named arguments
  }
}
