import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tack_habit/screens/home.dart';
import 'package:tack_habit/screens/tackedData.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedScreen;
  BottomNavigation(this.selectedScreen);
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return AnimatedBottomNavigationBar(
      height: height * .08,
      icons: [
        Icons.spellcheck_rounded,
        Icons.insert_chart,
      ],
      iconSize: height * 0.035,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      activeIndex: widget.selectedScreen,
      activeColor: Colors.black,
      inactiveColor: Colors.grey,
      onTap: (int selectedOption) {
        if (selectedOption != widget.selectedScreen) {
          if (selectedOption == 0) {
            Navigator.of(context).pushAndRemoveUntil(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return HomeScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
                (route) => false);
          } else {
            Navigator.of(context).pushAndRemoveUntil(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return TrackedDataScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
                (route) => false);
          }
        }
      },
    );
  }
}
