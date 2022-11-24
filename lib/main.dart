import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App'),
        ),
        body: Column(
          children: [
            Row(children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ]),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blueGrey,
                ),
              ),
              Expanded(
                child: Container(height: 100, color: Colors.deepPurple),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
