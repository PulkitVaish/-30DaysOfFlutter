import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    // render method of flutter
    return MaterialApp(
        home: Material(
            child: Center(
                child: Container(
      child: Text("EA Sports : Its in the game!"),
    ))));
  }
}
