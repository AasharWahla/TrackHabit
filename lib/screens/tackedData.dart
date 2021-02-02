import 'package:flutter/material.dart';
import 'package:tack_habit/widgets/bottomNavigation.dart';

class TrackedDataScreen extends StatefulWidget {
  @override
  _TrackedDataScreenState createState() => _TrackedDataScreenState();
}

class _TrackedDataScreenState extends State<TrackedDataScreen> {
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add_chart,
          size: height * .035,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigation(1),
      body: Container(
        height: height * .9,
        width: width,
        child: Center(
          child: Text("Tracked Data Screen."),
        ),
      ),
    );
  }
}
