import 'package:flutter/material.dart';

class Parametros {
  final String title;
  final String message;

  Parametros(this.title, this.message);
}

class AjudaPage extends StatelessWidget {
  const AjudaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Parametros args =
        ModalRoute.of(context)!.settings.arguments as Parametros;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(child: Text(args.message)),
    );
  }
}
