import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home()));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    Future _showIt() async {
      switch (await showDialog(
          context: inContext,
          builder: (BuildContext inContext) {
            return SimpleDialog(
                title: Text("Qual sua cor favorita?"),
                children: [
                  SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(inContext, "Azul");
                      },
                      child: Text("Azul")),
                  SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(inContext, "Verde");
                      },
                      child: Text("Verde"))
                ]);
          })) {
        case "Azul":
          print("Azul");
          break;
        case "Verde":
          print("Verde");
          break;
      }
    }

    return Scaffold(
        body: Center(
            child: ElevatedButton(
      child: Text("Show"),
      onPressed: _showIt,
    )));
  }
}
