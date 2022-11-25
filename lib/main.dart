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
        body: Column(children: [
          Exemplo(),
          Exemplo(),
        ]),
      ),
    );
  }
}

class Exemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      color: Colors.red,
      child: Column(children: [
        const Text('Texto de Exemplo'),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Clique aqui",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
