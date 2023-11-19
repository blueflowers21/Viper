import 'package:flutter/material.dart';
import 'package:viper/counter_interactor.dart';
import 'counter.dart';

class CounterPresenter extends ChangeNotifier {
  final CounterInteractor _interactor = CounterInteractor();
  Counter _counter = Counter(0);

  Counter get counter => _counter;

  void incrementCounter() {
    _counter = _interactor.incrementCounter(_counter);
    notifyListeners();
  }

  void decrementCounter() {
    _counter = _interactor.decrementCounter(_counter);
    notifyListeners();
  }
}
