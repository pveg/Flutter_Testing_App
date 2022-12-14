import 'package:flutter/material.dart';

void main() {
  runApp(MyTestingApp());
} //this is the function that kicks off the app -> always void main ()

class MyTestingApp extends StatelessWidget {
  Widget build(BuildContext context) {
    //Needs Type and Context
    return MaterialApp(
        home: Text(
            'Testing App! that is terrible')); //receive the named arguments
  }
}
