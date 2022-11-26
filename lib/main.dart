import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';
import 'package:flutter_001/src/homeTabBar.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: HomeTabBar());
  }
}
