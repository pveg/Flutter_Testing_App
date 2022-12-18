import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;

  Answers(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: selectHandler,
          child: Text('Answer 1')),
    );
  }
}
