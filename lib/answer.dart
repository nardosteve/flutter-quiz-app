import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Properties
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.tryParse('250'),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
      ),
    );
  }
}
