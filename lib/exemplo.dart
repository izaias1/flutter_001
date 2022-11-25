import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget {
  Exemplo({
    this.title,
    required this.onPress,
  });

  var title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    // verifica se foi inserido algum texto
    // caso contrario insere um
    // texto de exemplo
    if (title == null) {
      title = 'Sem Titulo';
    }

    return Container(
      width: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      color: Colors.red,
      child: Column(children: [
        Text(title),
        TextButton(
          onPressed: onPress,
          child: const Text(
            "Clique aqui",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
