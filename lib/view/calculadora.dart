import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  int? valor1;
  int? valor2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [TextField()],
      ),
    );
  }
}
