import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Input Data, create a constructor to initialize data
  //final - value will never be changed
  final String questionText;

  //Positional Argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Container(
          //margin: EdgeInsets.all(10), //Special Constructors
          child: Text(
            questionText,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
