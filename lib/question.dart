import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Input Data, create a constructor to initialize data
  //final - value will never be changed
  final String questionText;

  //Positional Argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
