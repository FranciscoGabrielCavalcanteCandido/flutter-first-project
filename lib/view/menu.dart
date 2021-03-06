import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget criarBotao(String nomeBotao, VoidCallback? acaoBotao) {
    return ElevatedButton(child: Text(nomeBotao), onPressed: acaoBotao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        criarBotao('Olá Mundo!', () => print('Hello world')),
        criarBotao('Calcular Idade',
            () => Navigator.pushNamed(context, '/calcularIdade')),
        criarBotao(
            'Hello Word', () => Navigator.pushNamed(context, '/helloWorld')),
        criarBotao(
            'Calculadora', () => Navigator.pushNamed(context, '/calculadora')),
      ])),
    );
  }
}
