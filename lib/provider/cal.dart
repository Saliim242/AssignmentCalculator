import 'package:flutter/material.dart';

class Calculator extends ChangeNotifier {
  //
  late int numOne;
  late int numTwo;

  void getNumOne(int num) {
    numOne = num;

    notifyListeners();
  }

  void getNumTwo(int number) {
    numTwo = number;

    notifyListeners();
  }

  //

  void addNumbers() {
    int result = numOne + numTwo;
  }
}
