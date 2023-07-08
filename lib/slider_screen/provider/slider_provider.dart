import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  double value = 0;

  double get getValue => value;

  void setValue(double val) {
    value = val;
    notifyListeners();
  }
}
