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
          children: const [
            ListTile(
              leading: Icon(Icons.copyright),
              title: Text('Nome'),
              trailing: Icon(Icons.access_alarm_sharp),
            )
          ],
        ),
      ),
    );
  }
}
