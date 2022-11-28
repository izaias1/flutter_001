import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_001/src/models/contador.dart';
import 'package:flutter_001/src/ajuda.dart';
import 'package:flutter_001/src/home.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) => Contador())),
        ],
        child: MeuApp(),
      ),
    );

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
