import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_001/src/ajuda.dart';
import 'package:flutter_001/src/home.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/ajuda': (context) => AjudaPage(),
      },
      initialRoute: '/home',
    );
  }
}
