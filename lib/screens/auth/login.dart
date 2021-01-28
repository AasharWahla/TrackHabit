import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Spacer
            SizedBox(
              height: height * .05,
              width: width,
            ),
            // Animated Text
            Container(
              height: height * .1,
              width: width,
              padding: EdgeInsets.only(right: width * .1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 20.0, height: 100.0),
                  RotateAnimatedTextKit(
                    repeatForever: true,
                    text: ["BREAK", "MAKE", "TRACK", "IMPROVE"],
                    textStyle: GoogleFonts.varelaRound(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(width: 20.0, height: 100.0),
                  Text(
                    "Habbit",
                    style: GoogleFonts.varelaRound(
                      fontSize: 43,
                    ),
                  ),
                ],
              ),
            ),
            // Simple Text
            // Login form
            // forget password
            //login
            // space
            // signup
          ],
        ),
      ),
    );
  }
}

/*

  h => height of the screen
  w => width of the screen

  Structure of the screen:
    0- Space h*.05
    1- Animated Text  h*.1
    2- Login to Start Your Journey h*.05
    3- Login Form h*.3
    4- Forgot Password h*.05
    5- Login h*.1
    6- Space h*.2
    7- Sign up h*.1
    8- Space  h*.05

*/
