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
        body: Column(
          children: [
            const Image(
              width: 100,
              image: AssetImage('assets/logo.png'),
            ),
            Image.network(
                'https://www.freepnglogos.com/uploads/logo-ifood-png/ifood-faca-seu-pedido-online-logo-png-12.png'),
          ],
        ),
      ),
    );
  }
}
