import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  /// Use SizedBox() for inserting spacing between two elements instead of padding
  /// For styling buttons gotta use TextButton.styleFrom() [NOT THE BEST WAY IMO]
  /// ElevatedButton is the button we see normally
  /// Can wrap with padding and select if symmetric/not

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/logo.png", fit: BoxFit.cover),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Welcome to iHoles!",
            style: TextStyle(fontSize: 35, color: Colors.cyan),
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
                  style: TextStyle(fontFamily: GoogleFonts.nunito().fontFamily),
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  style: TextStyle(fontFamily: GoogleFonts.nunito().fontFamily),
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Get the fuck out of the way!");
                  },
                  child: Text("Sign In"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber, shadowColor: Colors.red),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
