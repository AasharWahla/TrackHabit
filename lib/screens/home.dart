import 'package:flutter/material.dart';
import 'package:tack_habit/screens/addHabbit.dart';
import 'package:tack_habit/widgets/bottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

/*
  The preselcted screen will be today.
  In the center of the bottom navigation bar there will be add new habbit.
  At the right will be past record.
*/

class _HomeScreenState extends State<HomeScreen> {
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: "addTask",
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddHabbitScreen(),
            ),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add_chart,
          size: height * .035,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigation(0),
      body: Container(
        height: height * .9,
        width: width,
        child: Center(
          child: Text("Home Screen."),
        ),
      ),
    );
  }
}
