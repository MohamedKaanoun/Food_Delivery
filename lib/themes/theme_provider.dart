import 'package:flutter/material.dart';
import 'package:pizza_app/themes/dark_mode.dart';
import 'package:pizza_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == DarkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      themeData = DarkMode;
    } else {
      themeData = LightMode;
    }
  }
}
