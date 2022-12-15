import 'package:flutter/material.dart';

/* void main() {
  runApp(MyTestingApp());
} */ //this is the function that kicks off the app -> always void main ()

void main() => runApp(MyTestingApp());

class MyTestingApp extends StatelessWidget {
  void answerQuestion() => print('answer chosen!');

  @override //makes clear that we overrides the build method
  Widget build(BuildContext context) {
    //Needs Type and Context
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')), //appbar
        body: Column(children: <Widget>[
          Text('Questions'),
          ElevatedButton(
              onPressed: answerQuestion, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: answerQuestion, child: Text('Answer 2')),
          ElevatedButton(
              onPressed: answerQuestion, child: Text('Answer 3')),
        ]),
      ),
    ); //receive the named arguments
  }
}
