import 'dart:developer';

import 'package:explore_app_1/theme/theme_config.dart';
import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  static bool _isDark = false;

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    darkActive = !darkActive;
    notifyListeners();

    if (_isDark == true) {
      log('dark active');
    } else {
      log('light active');
    }
  }
}
