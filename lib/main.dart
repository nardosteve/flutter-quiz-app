//Get dependencies
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  //Creating a list/array
  final questions = const [
    {
      'questionText': 'Who is the current president of USA?',
      'answers': ['Joe Biden', 'Donald Trump', 'Barack Obama', 'George Bush'],
    },
    {
      'questionText': 'What are the colors of the Kenyan flag',
      'answers': ['Red', 'Black', 'White', 'Green'],
    },
    {
      'questionText': 'What is the Highest Grossing movie as of (2022)?',
      'answers': [
        'Avatar',
        'Avengers',
        'Iron-Man',
        'Jurrasic World',
      ],
    },
    {
      'questionText': 'My favourite color',
      'answers': ['Red', 'Black', 'Blue', 'Yellow'],
    },
  ];
  //Creating a function
  void _answerQuestion() {
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);

    //Check if there are any other question
    if (_questionIndex < questions.length) {
      //Do something
      print("No More Question");
    }
  }

  //BuildContext - special type of object
  //Build method is always responsible for returning a new widget
  @override
  Widget build(BuildContext context) {
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
              questions[_questionIndex]['questionText'] as String,
            ),
            //Answer(_answerQuestion),
            // ... Spread operator take a list and pull values out of the list
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
