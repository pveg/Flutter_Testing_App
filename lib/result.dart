import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 90) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 60) {
      resultText = 'Super cool!';
    } else if (resultScore <= 30) {
      resultText = 'Amazing!';
    } else {
      resultText = 'You are so so';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
          )
        ],
      ),
    );
  }
}
