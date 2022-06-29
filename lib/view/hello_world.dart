import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  String? nome;


  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text(
              resultado,
              style: TextStyle(fontSize: 25),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Nome:'), hintText: ('Digite o seu Nome')),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          ElevatedButton(
            child: Text('surpresa'),
            onPressed: () {
              var menssagem = 'Hello $nome';
              mostrarResultado(menssagem, context);
            },
          )
        ],
      ),
    );
  }
}
