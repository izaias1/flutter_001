import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
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
        body: ListView(
          // aqui aonde decide se vai ser horizontal ou vertical
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 150,
              color: Colors.amber,
            ),
            Container(
              width: 150,
              color: Colors.blueGrey,
            ),
            Container(
              width: 150,
              color: Colors.deepPurple,
            ),
            Container(
              width: 150,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
