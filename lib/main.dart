import 'package:flutter/material.dart';

/* void main() {
  runApp(MyTestingApp());
} */ //this is the function that kicks off the app -> always void main ()

void main() => runApp(MyTestingApp());

class MyTestingApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MyTestingAppState();
  }
}

class MyTestingAppState extends State<MyTestingApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
    questionIndex++;
    });
    print(questionIndex);
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
          Text(questions[questionIndex]),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
        ]),
      ),
    ); //receive the named arguments
  }
}
