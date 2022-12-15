import 'package:flutter/material.dart';

/* void main() {
  runApp(MyTestingApp());
} */ //this is the function that kicks off the app -> always void main ()

void main() => runApp(MyTestingApp());

class MyTestingApp extends StatelessWidget {
  @override //makes clear that we overrides the build method
  Widget build(BuildContext context) {
    //Needs Type and Context
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')), //appbar
        body: Text('This is the default body'),
      ),
    ); //receive the named arguments
  }
}