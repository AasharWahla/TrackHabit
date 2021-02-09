import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddHabbitScreen extends StatefulWidget {
  @override
  _AddHabbitScreenState createState() => _AddHabbitScreenState();
}

class _AddHabbitScreenState extends State<AddHabbitScreen> {
  double height, width;
  final Key _habitFormKey = GlobalKey<FormState>();
  bool showNotification = false;
  FocusNode _habitNameFocusNode;
  FocusNode _habitDetailFocusNode;
  var weekDay = {
    "Mo": false,
    "Tu": false,
    "We": false,
    "Th": false,
    "Fr": false,
    "Sa": false,
    "Su": false
  };

  @override
  void initState() {
    super.initState();
    _habitDetailFocusNode = FocusNode();
    _habitNameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _habitDetailFocusNode.dispose();
    _habitNameFocusNode.dispose();
    super.dispose();
  }

  void _requestHabitNameFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_habitNameFocusNode);
    });
  }

  void _requestHabitDetailFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_habitDetailFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          // backgroud color
          Hero(
            tag: "addTask",
            child: Container(
              height: height,
              width: width,
              color: Colors.black,
            ),
          ),
          // content of the page
          SingleChildScrollView(
            child: Column(
              // total height of the column will be h * .9
              children: [
                SizedBox(
                  width: width,
                ),
                // Add your habbit h * .1
                Container(
                  height: height * .07,
                  width: width * .9,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Add New Habbit",
                      style: GoogleFonts.varelaRound(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    bottom: height * .03,
                  ),
                ),
                // Form h*.2 -> habbit name - description (optional)
                Container(
                  height: height * .2,
                  width: width * .9,
                  child: Form(
                    key: _habitFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: TextFormField(
                            focusNode: _habitNameFocusNode,
                            onTap: _requestHabitNameFocus,
                            style: GoogleFonts.varelaRound(),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                              labelText: (_habitNameFocusNode.hasFocus)
                                  ? "Habit Name"
                                  : "\tHabit Name",
                              labelStyle: GoogleFonts.varelaRound(
                                color: (_habitNameFocusNode.hasFocus)
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 25,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            maxLines: 5,
                            minLines: 3,
                            focusNode: _habitDetailFocusNode,
                            onTap: _requestHabitDetailFocus,
                            style: GoogleFonts.varelaRound(),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                              labelText: (_habitDetailFocusNode.hasFocus)
                                  ? "Habit Details"
                                  : "\tHabit Details - Optional",
                              labelStyle: GoogleFonts.varelaRound(
                                color: (_habitDetailFocusNode.hasFocus)
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 25,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Send me notification h*.1
                Container(
                  height: height * .1,
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "I would like to get notification",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            autofocus: true,
                            value: showNotification,
                            onChanged: (val) {
                              setState(() {
                                showNotification = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Week notification - Days Notification h*.1
                Container(
                  height: height * .1,
                  width: width * .9,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: weekDay.length,
                    itemBuilder: (BuildContext context, int index) {
                      String mapKey = weekDay.keys.elementAt(index);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            weekDay[mapKey] = !weekDay[mapKey];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: width * 0.05),
                          height: height * .1,
                          width: width * .15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (weekDay[mapKey]) ? Colors.white : Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                mapKey,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: (weekDay[mapKey])
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Select Notification time - h*.1
                Container(
                  height: height * .1,
                  width: width * .9,
                  child: Row(
                    children: [],
                  ),
                ),
                // space h*.15
                // Save h*.1
                // space h*.05
              ],
            ),
          ),
        ],
      ),
    );
  }
}
