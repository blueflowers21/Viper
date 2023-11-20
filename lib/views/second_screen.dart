import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2da Pantalla'),
      ),
      body:  Center(
        child: Image.asset('assets/lego.jpg'), 
      ),
    );
  }
}
