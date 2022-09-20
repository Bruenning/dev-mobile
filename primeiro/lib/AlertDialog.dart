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
    _showIt() {
      return showDialog(
          context: inContext,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Nós viemos em paz!"),
                content: Center(child: Text("Ohh garra!")),
                actions: [
                  FlatButton(
                      child: Text("Atire, atire"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ]);
          });
    }

    return Scaffold(
        body: Center(
            child: ElevatedButton(
      child: Text("Show"),
      onPressed: _showIt,
    )));
  }
}
