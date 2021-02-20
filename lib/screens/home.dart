import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tack_habit/screens/addHabit.dart';
import 'package:tack_habit/widgets/bottomNavigation.dart';
import 'package:tack_habit/widgets/customDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

/*
  The preselcted screen will be today.
  In the center of the bottom navigation bar there will be add new habit.
  At the right will be past record.
*/

class _HomeScreenState extends State<HomeScreen> {
  ZoomDrawerController _controller = ZoomDrawerController();
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: ZoomDrawer(
        controller: _controller,
        menuScreen: HomeScreen(),
        mainScreen: CustomDrawerScreen(),
        slideWidth: MediaQuery.of(context).size.width * .5,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "addTask",
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddHabitScreen(),
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigation(0),
      body: Container(
        padding: EdgeInsets.only(top: height * 0.05, left: width * .05),
        height: height * .9,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your Day So Far - Text - h * 0.05
            Container(
              height: height * .05,
              width: width * .6,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Your Day So Far",
                  style: GoogleFonts.varelaRound(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Random Insipiration Quote - Regarding Book h*.15
            Container(
              width: width * .9,
              margin: EdgeInsets.only(
                top: height * .02,
              ),
              height: height * .13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
            ),

            // ! delete the widget below

            SizedBox(
              height: height * .05,
            ),
            // Check List
            Container(
              height: height * .1,
              width: width * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        ZoomDrawer.of(context).open();
                      },
                      child: Text(
                        "Task Name",
                        style: GoogleFonts.varelaRound(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
