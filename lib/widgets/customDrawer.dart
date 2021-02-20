import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tack_habit/screens/home.dart';

class CustomDrawerScreen extends StatefulWidget {
  @override
  _CustomDrawerScreenState createState() => _CustomDrawerScreenState();
}

class _CustomDrawerScreenState extends State<CustomDrawerScreen> {
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey[800], Colors.black],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: height,
                width: width * .5,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .1,
                      width: width * .5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      height: height * .15,
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Text(
                      "User Name",
                      style: GoogleFonts.varelaRound(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      width: width * .45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Profile",
                            style: GoogleFonts.varelaRound(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      width: width * .45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Settings",
                            style: GoogleFonts.varelaRound(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      width: width * .45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Log Out",
                            style: GoogleFonts.varelaRound(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                ZoomDrawer.of(context).close();
              },
              child: Container(
                width: width * .5,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20, bottom: 30),
                    height: height * .05,
                    width: width * .3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      width: width * .45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "CLOSE ",
                            style: GoogleFonts.varelaRound(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
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
