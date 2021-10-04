import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  int _index = 1;
  int get index => _index;

  void setPage(int i) {
    _index = i;
    notifyListeners();
  }
}
