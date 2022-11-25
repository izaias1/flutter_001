import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var textStyle = const TextStyle(
    fontSize: 30,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Titulo da Pagina',
                style: textStyle,
              ),
              Container(
                child: const Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text('Clique aqui'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
