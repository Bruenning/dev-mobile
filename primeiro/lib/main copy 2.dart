import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Olá flutter'),
            ),
            drawer: Drawer(
              child: Column(
                children: [
                  Text("Texto 1"),
                  Divider(),
                  Text("Texto 2"),
                  Divider(),
                  Text("Texto 3"),
                  Divider(),
                ],
              ),
            ),
            body: Center(
                child: Card(
              color: Color.fromRGBO(255, 255, 0, 100),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(0, 255, 0, 100),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text("Texto inicial"),
                Divider(),
                Text("Exemplo divider"),
                Divider(),
              ]),
            ))));
  }
}
