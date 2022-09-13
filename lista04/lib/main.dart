import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final perguntas = ['Você possui CNH?', 'Você possui veiculo?'];

    return MaterialApp(
      title: 'Exemplo Inicial',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Exemplo Inicial'),
          ),
          body: Column(children: [
            Text(perguntas[0]),
            const ElevatedButton(onPressed: null, child: Text('Sim')),
            const ElevatedButton(onPressed: null, child: Text('Não')),
            const ElevatedButton(onPressed: null, child: Text('Em processo'))
          ])),
    );
  }
}
