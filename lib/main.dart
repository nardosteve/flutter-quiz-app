//Get dependencies
import 'package:flutter/material.dart';

void main() {
  //Main method
  //runApp - is a function that runs our flutter app and calls our build method
  //Executed when the app runs
  runApp(MyApp());
}

//Short hand for writing functions
//void main => runApp(MyApp());

//StatelessWidget - doesnt change
//Stateful - changes overtime
//Every widget has to extend stateless/stateful
class MyApp extends StatelessWidget {
  //Creating a function
  void answerQuestion() {
    print('Answer chosen!');
  }

  //BuildContext - special type of object
  //Build method is always responsible for returning a new widget
  @override
  Widget build(BuildContext context) {
    //Creating a list/array
    var questions = [
      'Who is the president of USA?',
      'What are the colors of the Kenyan flag',
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
            const Text('The question'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: () => print('Correct'),
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}
