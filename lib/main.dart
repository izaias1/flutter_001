import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var contatos = [
    'Isarel',
    'Joana',
    'Janailza',
    'Janaina',
    'Israel Junior',
    'Jozileide',
    'Izaias',
    'Ytalo'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App'),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text('${contatos[index]}'),
              trailing: TextButton(
                onPressed: () {},
                child: Text('Editar'),
              ),
            );
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Cabecalho'),
              ),
              Text('Menu 01'),
              Text('Menu 01'),
              Text('Menu 01'),
            ],
          ),
        ),
      ),
    );
  }
}
