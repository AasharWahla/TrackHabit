import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tack_habit/screens/provider/themeProvider.dart';
import 'package:tack_habit/style.dart';
import 'package:tack_habit/widgets/bottomNavigation.dart';
import 'package:tack_habit/widgets/customDrawer.dart';

import 'addHabit.dart';

class TrackedDataScreen extends StatefulWidget {
  @override
  _TrackedDataScreenState createState() => _TrackedDataScreenState();
}

class _TrackedDataScreenState extends State<TrackedDataScreen> {
  int themeValue = 0;

  double height, width;
  @override
  Widget build(BuildContext context) {
    themeValue = Provider.of<ThemeProvider>(context).themeValue;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: (themeValue == 0) ? lightBgColor : darkBgColor,
      floatingActionButton: FloatingActionButton(
        heroTag: "addTask",
        onPressed: () {
          ZoomDrawer.of(context).open();

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => AddHabitScreen(),
          //   ),
          // );
        },
        backgroundColor: (themeValue == 1) ? darkFABColor : lightFABColor,
        child: Icon(
          Icons.add_chart,
          color: (themeValue == 1) ? darkFABIconColor : lightFABIconColor,
          size: height * .035,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigation(1, themeValue),
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
                    color: (themeValue == 0) ? lightFontColor : darkFontColor,
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

class TrackedDataDrawer extends StatefulWidget {
  @override
  _TrackedDataDrawerState createState() => _TrackedDataDrawerState();
}

class _TrackedDataDrawerState extends State<TrackedDataDrawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: CustomDrawerScreen(),
      mainScreen: TrackedDataScreen(),
      borderRadius: 24.0,
      angle: 0.0,
      openCurve: Curves.easeIn,
      closeCurve: Curves.easeInBack,
      slideWidth: MediaQuery.of(context).size.width * .5,
    );
  }
}
