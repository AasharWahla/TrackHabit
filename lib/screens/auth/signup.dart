import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double height;
  double width;
  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;
  FocusNode _nameFocusNode;
  FocusNode _confirmPasswordNode;
  bool _showPassword = false;
  String email = "";
  String password = "";
  @override
  void initState() {
    super.initState();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _nameFocusNode.dispose();
    _confirmPasswordNode.dispose();
    super.dispose();
  }

  void _requestEmailFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_emailFocusNode);
    });
  }

  void _requestNameFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_nameFocusNode);
    });
  }

  void _requestConfirmPasswordNode() {
    setState(() {
      FocusScope.of(context).requestFocus(_confirmPasswordNode);
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: width,
            ),
            // Start your journey with us - Text
            Container(
              height: height * .1,
              width: width * .9,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Start Your Journey with Us!",
                    style: GoogleFonts.varelaRound(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // SignUp Text
            Container(
              height: height * .1,
              width: width * .9,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "SignUp!",
                    style: GoogleFonts.varelaRound(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // SignUp form
            Container(
              width: width * .9,
              height: height * .4,
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: TextFormField(
                          focusNode: _nameFocusNode,
                          onTap: _requestNameFocus,
                          style: GoogleFonts.varelaRound(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: (_nameFocusNode.hasFocus)
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            labelText:
                                (_nameFocusNode.hasFocus) ? "name" : "\tname",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_emailFocusNode.hasFocus)
                                  ? Colors.black
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
                          focusNode: _emailFocusNode,
                          onTap: _requestEmailFocus,
                          style: GoogleFonts.varelaRound(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: (_emailFocusNode.hasFocus)
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            labelText: (_emailFocusNode.hasFocus)
                                ? "e-mail"
                                : "\te-mail",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_emailFocusNode.hasFocus)
                                  ? Colors.black
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
                              color: (_passwordFocusNode.hasFocus)
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
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
                              child: Icon(
                                (_showPassword)
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: (_showPassword)
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            labelText: (_passwordFocusNode.hasFocus)
                                ? "password"
                                : "\tpassword",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_passwordFocusNode.hasFocus)
                                  ? Colors.black
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
                          focusNode: _confirmPasswordNode,
                          onTap: _requestConfirmPasswordNode,
                          style: GoogleFonts.varelaRound(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: (_confirmPasswordNode.hasFocus)
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
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
                              child: Icon(
                                (_showPassword)
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: (_showPassword)
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            labelText: (_confirmPasswordNode.hasFocus)
                                ? "confirm password"
                                : "\tconfirm password",
                            labelStyle: GoogleFonts.varelaRound(
                              color: (_passwordFocusNode.hasFocus)
                                  ? Colors.black
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

            //login
            InkWell(
              child: Container(
                margin: EdgeInsets.only(
                  top: height * .04,
                ),
                height: height * .06,
                width: width * .6,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.varelaRound(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // space
            SizedBox(
              height: height * .05,
            ),
            // signup
            InkWell(
              child: Container(
                margin: EdgeInsets.only(
                  top: height * .02,
                  bottom: height * .02,
                ),
                height: height * .06,
                width: width * .6,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Already have an accout? Log In!",
                    style: GoogleFonts.varelaRound(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // space
            SizedBox(
              height: height * .05,
            ),
          ],
        ),
      ),
    );
  }
}


/*
  Layout of the screen
  Text: Start your journey with us
  Text: SignUp
  Form: Signup Form
  Button: SignUp Button
  Button: Already have an account sign in.
*/