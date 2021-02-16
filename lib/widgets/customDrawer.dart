import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:tack_habit/screens/home.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    print("openned drawer");
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: TestScreen(),
      mainScreen: HomeScreen(),
      borderRadius: 24.0,
      showShadow: true,
      backgroundColor: Colors.grey[300],
      slideWidth: MediaQuery.of(context).size.width * .45,
    );
  }
}

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 500,
      width: 200,
    );
  }
}
