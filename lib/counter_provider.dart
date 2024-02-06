import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void count() {
    counter++;
    notifyListeners();
  }
}
