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
          Table(
            border: TableBorder(
                top: BorderSide(width: 2),
                bottom: BorderSide(width: 2),
                left: BorderSide(width: 2),
                right: BorderSide(width: 2),
                horizontalInside: BorderSide(width: 2)),
            children: [
              TableRow(children: [
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("1"))),
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("2"))),
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("3"))),
              ]),
              TableRow(children: [
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("4"))),
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("5"))),
                Center(
                    child:
                        Padding(padding: EdgeInsets.all(10), child: Text("6"))),
              ])
            ],
          )
        ]));
  }
}
