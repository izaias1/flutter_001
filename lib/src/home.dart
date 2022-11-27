import 'package:flutter/material.dart';

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
            Navigator.pushNamed(context, '/ajuda');
          }),
          child: const Text('Ir para Pagina Ajuda'),
        ),
      ),
    );
  }
}
