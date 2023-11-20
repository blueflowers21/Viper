import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2da Pantalla'),
      ),
      body: const Center(
        child: Text('Segunda Pantalla'),
      ),
    );
  }
}
