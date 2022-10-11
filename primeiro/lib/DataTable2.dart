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
          //title: appName,
          ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Home extends State<Home> {
  int line = -1;
  final String title = "DataTable";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(children: [
          Container(height: 100),
          DataTable(sortColumnIndex: 1, columns: [
            DataColumn(label: Text("Primeiro nome")),
            DataColumn(label: Text("Último nome"))
          ], rows: [
            DataRow(
                selected: line == 0,
                onSelectChanged: (value) {
                  setState(() {
                    line = 0;
                  });
                },
                cells: [
                  DataCell(Text("Leia")),
                  DataCell(Text("Organa"), showEditIcon: true)
                ]),
            DataRow(
                selected: line == 1,
                onSelectChanged: (value) {
                  setState(() {
                    line = 1;
                  });
                },
                cells: [DataCell(Text("Luke")), DataCell(Text("Skywalker"))]),
            DataRow(
                selected: line == 2,
                onSelectChanged: (value) {
                  setState(() {
                    line = 2;
                  });
                },
                cells: [DataCell(Text("Han")), DataCell(Text("Solo"))])
          ])
        ]));
  }
}
