import 'package:flutter/material.dart';
import 'question.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<String>)
          .map((question) => Answers(answerQuestion, question))
          .toList()
    ]);
  }
}
