import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  int themeValue = 0;
  /*
    0 => Light theme
    1 => Dark theme
  */
  ThemeProvider() {
    getCurrentTheme();
  }

  void getCurrentTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int val = pref.getInt("theme");
    if (val == null) {
      pref.setInt("theme", 0);
    } else {
      themeValue = 1;
    }
    notifyListeners();
  }

  void changeThemeToDark() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("theme", 1);
    themeValue = 1;
    debugPrint("changing theme to dark");
    notifyListeners();
  }

  void changeThemeToLight() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("theme", 0);
    themeValue = 0;
    debugPrint("changing theme to light");
    notifyListeners();
  }
}
