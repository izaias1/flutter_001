import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App'),
        ),
        body: Column(children: [
          Exemplo(
            title: 'Texto 01',
            onPress: () {
              print('Cliclou no botão 01');
            },
          ),
          Exemplo(
            onPress: () {
              print('Cliclou no botão 02');
            },
          ),
        ]),
      ),
    );
  }
}
