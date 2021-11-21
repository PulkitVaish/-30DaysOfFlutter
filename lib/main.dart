import 'package:flutter/material.dart';
import 'package:foundation_app/screens/home_page.dart';
import 'package:foundation_app/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor only required if some data being handled
  const MyApp({Key? key}) : super(key: key); //constructor

  //Functions in dart
  randomFunc({required bool reqd, String param = "Default parameter"}) {}

  @override
  Widget build(BuildContext context) {
    // context ~ DOM for flutter app
    //num datatype can both take double and integer
    num temp = 30.5;
    num temp2 = 31;
    randomFunc(reqd: true);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // By default theme defines properties for light mode
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.monofett().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      // themeMode: ThemeMode.dark,
      initialRoute: "/login",
      routes: {
        "/": (context) => new HomePage(),
        "/login": (context) => new LoginPage(),
      },
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
