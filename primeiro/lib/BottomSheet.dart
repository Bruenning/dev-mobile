import 'package:flutter/material.dart';

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
      showModalBottomSheet(
          context: inContext,
          builder: (BuildContext inContext) {
            return new Column(mainAxisSize: MainAxisSize.min, children: [
              Text("Qual sua cor favorita?"),
              FlatButton(
                child: Text("Azul"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                },
              ),
              FlatButton(
                child: Text("Verde"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                },
              ),
              FlatButton(
                child: Text("Vermelho"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                },
              )
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
