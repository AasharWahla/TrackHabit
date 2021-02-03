import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigation(1),
      body: Container(
        padding: EdgeInsets.only(top: height * 0.05),
        height: height * .9,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: width * .05),
              height: height * .05,
              width: width * .6,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Your Progress",
                  style: GoogleFonts.varelaRound(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
