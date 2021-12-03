import "package:flutter/material.dart";
import 'package:foundation_app/utils/routes.dart';
import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

/// Use SizedBox() for inserting spacing between two elements instead of padding
/// For styling buttons gotta use TextButton.styleFrom() [NOT THE BEST WAY IMO]
/// ElevatedButton is the button we see normally
/// Can wrap with padding and select if symmetric/not
/// SingleChildScrollView prevents overflow problems in smaller screen sizes
/// _ represents private in dart
/// setState(() {}); asks the build method to be re-run
/// Container is an empty box => Specify its height and width
/// InkWell widget wrapper gives the ripple effect of clicking and shit
/// GestureDetector does not give an UI feedback

class _LoginPageState extends State<LoginPage> {
  String name = "";
  // Just to show conditional changes and animation
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png", fit: BoxFit.cover),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome to iHoles,$name",
              style: const TextStyle(fontSize: 35, color: Colors.cyan),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    style:
                        TextStyle(fontFamily: GoogleFonts.nunito().fontFamily),
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      // Ask flutter to make a re-render
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    style:
                        TextStyle(fontFamily: GoogleFonts.nunito().fontFamily),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeBtn = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2), // Kitti der
                      width: 100,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // Conditional component rendering
                      child: changeBtn
                          ? const Icon(Icons.done, color: Colors.white)
                          : Text("SignIn",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.nunito().fontFamily)),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // print("Get the fuck out of the way!");
                  // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: const Text(
                  //     "Sign In",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  //   style: TextButton.styleFrom(
                  //       backgroundColor: Colors.blue,
                  //       shadowColor: Colors.red,
                  //       minimumSize: Size(100, 40)),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
