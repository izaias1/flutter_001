import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_001/src/models/contador.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
          child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Digite seu nome',
            ),
            onChanged: (text) {
              Provider.of<Contador>(context, listen: false).mudarNome(text);
            },
          ),
          Consumer<Contador>(
            builder: (context, contador, child) =>
                Text("Meu nome é: ${contador.nome}"),
          ),
          const Text('Contagem:'),
          Consumer<Contador>(
            builder: (context, contador, child) =>
                Text(contador.valor.toString()),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Contador>(context, listen: false).aumentar();
            },
            child: const Text('Aumentar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ajuda');
            },
            child: const Text('Ir para ajuda'),
          ),
        ],
      )),
    );
  }
}
