import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Input Data, create a constructor to initialize data
  //final - value will never be changed
  final String questionText;

  //Positional Argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
