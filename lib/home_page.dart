import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // render method of flutter
    final int variable = 69;
    final bool isMale = true;
    return Scaffold(
        appBar: AppBar(
          title: Text("iHoles"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            child: Text("EA Sports ${variable}: Its in the game!"),
          ),
        ));
  }
}
