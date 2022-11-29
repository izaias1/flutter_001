import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_001/src/models/contador.dart';

class AjudaPage extends StatelessWidget {
  const AjudaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajuda Titulo'),
      ),
      body: Center(
        child: Consumer<Contador>(
          builder: (context, contador, child) =>
              // Text('Contagem: ${contador.valor}'),
              Text('Nome: ${contador.nome}'),
        ),
      ),
    );
  }
}
