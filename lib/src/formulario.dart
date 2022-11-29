import 'package:flutter/material.dart';

class Formulatio extends StatefulWidget {
  const Formulatio({super.key});

  @override
  State<Formulatio> createState() => _FormulatioState();
}

class _FormulatioState extends State<Formulatio> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Digite seu nome',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Você precisa digitar seu nome.';
            }
            return null;
          },
        ),
        ElevatedButton(
          onPressed: () {
            if (_formkey.currentState!.validate()) {
              print('Formulario validado');
            }
          },
          child: const Text("Enviar"),
        ),
      ]),
    );
  }
}
