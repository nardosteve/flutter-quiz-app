//Get dependencies
import 'package:flutter/material.dart';

void main() {
  //Main method
  //runApp - run our flutter app
  runApp(MyApp());
}

//StatelessWidget - doesnt change
//Stateful - changes overtime
class MyApp extends StatelessWidget {
  //BuildContext - special type of object
  Widget build(BuildContext context) {
    //MaterialApp - based setup to combine th eapp into a real app
    //Constructors
    return MaterialApp(home: Text('Hello World'));
  }
}
