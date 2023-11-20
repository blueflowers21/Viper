import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../presenters/counter_presenter.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIPER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterPresenter>(
              builder: (context, presenter, child) {
                return Text(
                  'Count: ${presenter.counter.value}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterPresenter>().incrementCounter();
                  },
                  child: const Text('+'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterPresenter>().decrementCounter();
                  },
                  child: const Text('-'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second'); 
                },
                child: const Text('Go to Second Screen'),
                ),
          ],
        ),
      ),
    );
  }
}
