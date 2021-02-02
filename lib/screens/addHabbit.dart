import 'package:flutter/material.dart';

class AddHabbitScreen extends StatefulWidget {
  @override
  _AddHabbitScreenState createState() => _AddHabbitScreenState();
}

class _AddHabbitScreenState extends State<AddHabbitScreen> {
  double height, width;
  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
