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
  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;
  bool _showPassword = false;
  String email;
  String password;
  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _requestEmailFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_emailFocusNode);
    });
  }

  void _requestPasswordFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_passwordFocusNode);
    });
  }

  final _formKey = GlobalKey<FormState>();
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
              padding: EdgeInsets.only(right: width * .15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 20.0, height: 100.0),
                  RotateAnimatedTextKit(
                    repeatForever: true,
                    text: ["BREAK", "MAKE", "TRACK"],
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
            Container(
              height: height * .1,
              width: width * .9,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Login to Start your Journey!",
                    style: GoogleFonts.varelaRound(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            // Login form
            Container(
              width: width * .9,
              height: height * .3,
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: TextFormField(
                          focusNode: _emailFocusNode,
                          onTap: _requestEmailFocus,
                          style: GoogleFonts.varelaRound(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.amber,
                              ),
                            ),
                            labelText: (_emailFocusNode.hasFocus)
                                ? "e-mail"
                                : "\te-mail",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_emailFocusNode.hasFocus)
                                  ? Colors.red
                                  : Colors.grey,
                              fontSize: 25,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: TextFormField(
                          obscureText: (_showPassword) ? false : true,
                          focusNode: _passwordFocusNode,
                          onTap: _requestPasswordFocus,
                          style: GoogleFonts.varelaRound(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.amber,
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _showPassword = !_showPassword;
                                  },
                                );
                              },
                              child: Icon((_showPassword)
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            labelText: (_passwordFocusNode.hasFocus)
                                ? "password"
                                : "\tpassword",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_passwordFocusNode.hasFocus)
                                  ? Colors.red
                                  : Colors.grey,
                              fontSize: 25,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
