import 'package:shared_preferences/shared_preferences.dart';

class Styling {
  /*
  how is this supposed to work?

  At the init of every screen, we will get the value of the theme.
  Which will be stored using shared preference, with key "theme".
  0 -> Light Theme
  1 -> Dark Theme

  if user changes the theme within an screen, the screen will reload completely.

  But there will be an exception in drawer.
  Which will be that the drawer will be closed automatically, and in next
  screen the new theme will be implemented.  
  */

  Styling() {
    constFuntion();
  }

  int theme;

  void constFuntion() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    theme = pref.getInt("theme");
    if (theme == null) {
      pref.setInt("theme", 0);
      theme = 1;
    }
  }
}
