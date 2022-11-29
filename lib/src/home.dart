import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_001/src/models/contador.dart';
import 'package:flutter_001/src/formulario.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Bem vindo ao app',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Fazer Login'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
