import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Geter
  String get outputText {
    String resultText = '';

    if (resultScore >= 400) {
      resultText = 'Perfect! Scored everything';
    } else if (resultScore >= 300) {
      resultText = 'Almost there!';
    } else if (resultScore >= 200) {
      resultText = 'Better luck next time';
    } else if (resultScore >= 100) {
      resultText = 'Keep practicing!';
    } else {
      resultText = 'Yikes, let\'s go back to the basics';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            outputText,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: resetHandler,
              child: Text("Restart"),
            ),
          )
        ],
      ),
    );
  }
}
