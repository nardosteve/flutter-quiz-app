//Get dependencies
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  //Main method
  //runApp - is a function that runs our flutter app and calls our build method
  //Executed when the app runs
  runApp(MyApp());
}

//Short hand for writing functions
//void main => runApp(MyApp());

//StatelessWidget - doesnt change & StatefulWidget - changes overtime
//Every widget has to extend stateless/stateful

//MyApp widget can be rebuild
//External data passed changes only the widget data is updated
class MyApp extends StatefulWidget {
  //has to return a state object
  @override
  State<StatefulWidget> createState() {
    //Return state object
    return _MyAppState();
  }
}

//Define the state of our widget State<PointToClass - MyApp> - this state belongs to this class
//Sate is attached to the Widget
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  //Creating a function
  void _answerQuestion() {
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);
  }

  //BuildContext - special type of object
  //Build method is always responsible for returning a new widget
  @override
  Widget build(BuildContext context) {
    //Creating a list/array
    var questions = [
      'Who is the president of USA?',
      'What are the colors of the Kenyan flag',
      'Who is Nardosteve',
      'What is the Highest Grossing movie as of (2022)?',
    ];

    //MaterialApp - based setup to combine th eapp into a real app
    //Constructor name parameters
    //Scaffold (widget) - base page design
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Question(
              //questions.elementAt(0),
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => print('Correct'),
              child: Text('Answer 3'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
