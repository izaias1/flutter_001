import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int contagem = 0;
  var fundo = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        color: fundo,
        child: Column(
          children: [
            const Text('Contagem:'),
            Text(contagem.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contagem = contagem + 1;
                });
              },
              child: const Text('Aumentar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contagem = contagem - 1;
                });
              },
              child: const Text('Diminuir'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fundo = Colors.blue;
                });
              },
              child: const Text('Azul'),
            ),
          ],
        ),
      ),
    );
  }
}
