import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3, //quantas "abas"
            child: Scaffold(
              appBar: AppBar(
                  title: Text("Tela 1"),
                  bottom: TabBar(tabs: [
                    Tab(icon: Icon(Icons.announcement)),
                    Tab(icon: Icon(Icons.cake)),
                    Tab(icon: Icon(Icons.mail)),
                  ])),
              body: TabBarView(
                children: [
                  Center(child: Text("Anúncios")),
                  Center(child: Text("Aniversários")),
                  Center(child: Text("Contatos")),
                ],
              ),
            )));
  }
}
