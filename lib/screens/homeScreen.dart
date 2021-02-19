// this screen is just to test the flutter zoom drawer

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tack_habit/screens/home.dart';
import '../widgets/customDrawer.dart';

class HomeScreenDrawer extends StatefulWidget {
  @override
  _HomeScreenDrawerState createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends State<HomeScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Cutsomer(),
      mainScreen: HomeScreen(),
    );
  }
}
