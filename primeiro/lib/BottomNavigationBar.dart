import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatefulWidget {
  ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class _ExemploInicial extends State {
  var _currentPage = 0;
  var _pages = [
    Text("Pagina 1 - Anúncios"),
    Text("Pagina 2 - Aniversário"),
    Text("Pagina 3 - Contatos")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.announcement), label: "Anúncios"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.cake,
                    color: Colors.red,
                  ),
                  label: "Aniversário"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail), label: "Contatos"),
            ],
            currentIndex: _currentPage,
            fixedColor: Colors.yellow,
            onTap: (int inIndex) {
              setState(() {
                _currentPage = inIndex;
              });
            }),
      ),
    );
  }
}
