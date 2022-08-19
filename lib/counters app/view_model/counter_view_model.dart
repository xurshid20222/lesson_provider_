import 'package:flutter/material.dart';
import 'package:lesson_provider/counters%20app/model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel counterModel = CounterModel();

  void oneIncrement() {
    counterModel.counterOne++;
    notifyListeners();
  }

  void twoIncrement() {
    counterModel.counterTwo++;
    notifyListeners();
  }

  void oneDecrement() {
    counterModel.counterOne--;
    notifyListeners();
  }

  void twoDecrement() {
    counterModel.counterTwo--;
    notifyListeners();
  }
}