import '../entities/counter.dart';

class CounterInteractor {
  Counter incrementCounter(Counter counter) {
    return Counter(counter.value + 1);
  }

  Counter decrementCounter(Counter counter) {
    return Counter(counter.value - 1);
  }
}
