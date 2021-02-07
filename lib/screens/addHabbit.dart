import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddHabbitScreen extends StatefulWidget {
  @override
  _AddHabbitScreenState createState() => _AddHabbitScreenState();
}

class _AddHabbitScreenState extends State<AddHabbitScreen> {
  double height, width;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Hero(
      tag: "addTask",
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // total height of the column will be h * .9
            children: [
              SizedBox(
                width: width,
              ),
              // Add your habbit h * .1
              Container(
                height: height * .07,
                width: width * .9,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Add New Habbit",
                    style: GoogleFonts.varelaRound(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                  bottom: height * .03,
                ),
              ),
              // Form h*.2 -> habbit name - description (optional)
              // Send me notification h*.1
              // Week notification - Days Notification h*.1
              // Select Notification time - h*.1
              // space h*.15
              // Save h*.1
              // space h*.05
            ],
          ),
        ),
      ),
    );
  }
}
