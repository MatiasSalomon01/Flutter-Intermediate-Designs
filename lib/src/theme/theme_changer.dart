import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  bool _darkTheme = false;
  bool _customTheme = false;
  ThemeData? _currentTheme;

  bool get darkTheme => _darkTheme;
  bool get customTheme => _customTheme;
  ThemeData? get currentTheme => _currentTheme;

  // ThemeChanger(int theme) {
  //   switch (theme) {
  //     case 1:
  //       _darkTheme = false;
  //       _customTheme = false;
  //       _currentTheme = ThemeData.light();
  //       break;
  //     case 2:
  //       _darkTheme = true;
  //       _customTheme = false;
  //       _currentTheme = ThemeData.dark();
  //       break;
  //     case 3:
  //       _darkTheme = false;
  //       _customTheme = true;
  //       break;
  //     default:
  //       _darkTheme = false;
  //       _customTheme = false;
  //       _currentTheme = ThemeData.light();
  //   }
  // }

  set darkTheme(bool value) {
    _customTheme = false;
    _darkTheme = value;
    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  set customTheme(bool value) {
    _customTheme = value;
    _darkTheme = false;
    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  // set currentTheme(ThemeData value) {}
}
