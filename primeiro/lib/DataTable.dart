import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Temas customizados';
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        secondaryHeaderColor: Colors.amber,
        accentColor: Colors.green[600],
      ),
      home: Home(
        title: appName,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String? title;

  Home({Key? key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Column(children: [
          Container(height: 100),
          DataTable(sortColumnIndex: 1, columns: [
            DataColumn(label: Text("Primeiro nome")),
            DataColumn(label: Text("Último nome"))
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Leia")),
              DataCell(Text("Organa"), showEditIcon: true)
            ]),
            DataRow(
                cells: [DataCell(Text("Luke")), DataCell(Text("Skywalker"))]),
            DataRow(cells: [DataCell(Text("Han")), DataCell(Text("Solo"))])
          ])
        ]));
  }
}
