import 'package:flutter/material.dart';
import 'package:viper/views/counter_screen.dart';
import 'package:viper/views/second_screen.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const CounterScreen(),
          settings: settings,
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Ruta desconocida: ${settings.name}'),
            ),
          ),
          settings: settings,
        );
    }
  }

  static void navigateToSecondScreen(BuildContext context) {
    Navigator.pushNamed(context, '/second');
  }
}
