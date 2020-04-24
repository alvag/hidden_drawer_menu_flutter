import 'package:flutter/cupertino.dart';

class HeroesProvider with ChangeNotifier {
  String _heroe = 'Capitán América';

  get heroe => this._heroe;

  set heroe(String value) {
    this._heroe = value;
    notifyListeners();
  }
}
