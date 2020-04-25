import 'package:flutter/material.dart';

class ThemeChangeProvider with ChangeNotifier {
  ThemeData _themeData;

  ThemeChangeProvider(this._themeData);

  ThemeData get theme => this._themeData;

  set theme(ThemeData value) {
    this._themeData = value;
    notifyListeners();
  }
}
