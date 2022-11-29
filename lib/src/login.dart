import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Digite seu e-mail',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Você precisa digitar um e-mail';
                      }
                      return null;
                    },
                    onSaved: (txt) {
                      setState(() {
                        email = txt!;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Digite sua senha',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Digite sua senha';
                      }
                      if (value.length < 4) {
                        return 'Senha muito curta';
                      }
                      return null;
                    },
                    onSaved: (txt) {
                      setState(() {
                        senha = txt!;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                  Text('E-mail: $email'),
                  Text('Senha: $senha'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
