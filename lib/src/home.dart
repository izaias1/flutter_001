import 'package:flutter/material.dart';
import 'package:flutter_001/src/ajuda.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            Navigator.pushNamed(context, '/ajuda',
                arguments: Parametros('Ajuda 2', 'Mensagem 2'));
          }),
          child: const Text('Ir para Pagina Ajuda'),
        ),
      ),
    );
  }
}
