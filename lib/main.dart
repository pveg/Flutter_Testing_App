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
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'white', 'score': 30}
      ]
    },
    {
      'questionText': 'what is your favorite animal',
      'answers': [
        {'text': 'rabbit', 'score': 20},
        {'text': 'snake', 'score': 10},
        {'text': 'dog', 'score': 30}
      ]
    },
    {
      'questionText': 'what is your favorite movie',
      'answers': [
        {'text': 'Dune', 'score': 20},
        {'text': 'Star Wars', 'score': 30},
        {'text': 'Lord of the Rings', 'score': 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
      
    });

  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override //makes clear that we overrides the build method
  Widget build(BuildContext context) {
    //Needs Type and Context
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My first app'), backgroundColor: Colors.blueGrey),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    ); //receive the named arguments
  }
}
