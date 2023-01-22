import 'package:flutter/material.dart';
import 'question.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion; //VoidCallback is useful for callback events with no expected value. For scenarios where you want to return a value back to the parent, you will want to use Function(x).
  //https://stackoverflow.com/questions/71351392/flutter-the-argument-type-void-function-cant-be-assigned-to-the-parameter

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answers(() => answerQuestion(answer['score']), answer['text']);
      }).toList() 
    ]);
  }
}
