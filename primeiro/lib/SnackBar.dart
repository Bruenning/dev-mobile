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
      Scaffold.of(inContext).showSnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
        content: Text("Toasty"),
        action: SnackBarAction(
          label: "Snack",
          onPressed: () {
            print("Chomp!");
          },
        ),
      ));
    }

    return Scaffold(
        body: Center(
            child: ElevatedButton(
      child: Text("Show"),
      onPressed: _showIt,
    )));
  }
}
