import 'package:flutter/material.dart';
import 'package:foundation_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor only required if some data being handled
  const MyApp({Key? key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    //num datatype can both take double and integer
    num temp = 30.5;
    num temp2 = 31;

    return MaterialApp(
      home: HomePage(),
    );
  }
}
