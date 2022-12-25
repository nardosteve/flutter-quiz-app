import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Properties
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.tryParse('250'),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('Answer 1'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.red,
          ),
        ),
      ),
    );
  }
}
