import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_001/exemplo.dart';

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
            Image.asset('assets/muro.jpg'),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Kotel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Jerusalem, Israel',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '3.891',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.call),
                        Text(
                          'Ligar',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.location_city_outlined),
                        Text(
                          'Endereço',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.share),
                        Text(
                          'Compartilhar',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'),
            )
          ],
        ),
      ),
    );
  }
}
