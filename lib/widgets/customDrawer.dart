import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:tack_habit/screens/home.dart';

// class CustomDrawer extends StatefulWidget {
//   @override
//   _CustomDrawerState createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {
//   final _drawerController = ZoomDrawerController();

//   @override
//   Widget build(BuildContext context) {
//     print("openned drawer");
//     return ZoomDrawer(
//       controller: _drawerController,
//       menuScreen: TestScreen(),
//       mainScreen: HomeScreen(),
//     );
//   }
// }

// class TestScreen extends StatefulWidget {
//   @override
//   _TestScreenState createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//     );
//   }
// }

class Cutsomer extends StatefulWidget {
  @override
  _CutsomerState createState() => _CutsomerState();
}

class _CutsomerState extends State<Cutsomer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
