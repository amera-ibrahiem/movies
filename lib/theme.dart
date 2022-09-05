import 'package:flutter/material.dart';

class MyThemeData {
  static Color primarycolor = Color(0xFFB5B4B4);
  static Color orange = Color(0xFFE39E1C);
  static Color grey = Color(0xFFB5B4B4);
  static final ThemeData lightTheme = ThemeData(
      canvasColor: primarycolor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: orange, unselectedItemColor: grey));
  static final ThemeData darkTheme = ThemeData();
}
