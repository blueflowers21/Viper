import 'package:flutter/material.dart';
import 'package:viper/interactors/counter_interactor.dart';
import '../entities/counter.dart';
import '../router/app_router.dart';

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

  void navigateToSecondScreen(BuildContext context) {
    AppRouter.navigateToSecondScreen(context);
  }
}
