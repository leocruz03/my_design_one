import 'package:flutter/material.dart';

class BodyProvider extends ChangeNotifier {
  int _selectedMenuOptBody = 0;

  int get selectedMenuOptBody {
    return _selectedMenuOptBody;
  }

  set selectedMenuOptBody(int i) {
    _selectedMenuOptBody = i;
    notifyListeners();
  }
}
