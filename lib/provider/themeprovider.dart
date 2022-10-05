import 'dart:developer';

import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;
  int _counter = 0;
  int get counter => _counter;
  void setTheme({required ThemeMode themeMode}) {
    _themeMode = themeMode;
    notifyListeners();
  }

  bool _isSwitched = false;
  bool get isSwitched => _isSwitched;
  void setSwitchstate(bool flag) {
    _isSwitched = flag;
    notifyListeners();
  }

  void setcounter() {
    _counter++;
    notifyListeners();
  }
}
