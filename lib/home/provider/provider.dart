import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  var name = 'Jack';
  void changedName(String data) {
    name = data;
    notifyListeners();
  }

  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}
