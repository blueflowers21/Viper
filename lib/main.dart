import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viper/presenters/counter_presenter.dart';
import 'router/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterPresenter()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
