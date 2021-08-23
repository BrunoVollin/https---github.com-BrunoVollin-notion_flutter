import 'package:flutter/material.dart';

class AppControll extends ChangeNotifier {
  static AppControll instance = AppControll();
  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
