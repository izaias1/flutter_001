import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App'),
        ),
        body: const Center(
          child: Text('Olá Mundo!'),
        ),
      ),
    );
  }
}
