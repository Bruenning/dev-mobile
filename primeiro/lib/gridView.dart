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
        body: GridView.count(
            crossAxisCount: 6,
            padding: EdgeInsets.all(4.0),
            childAspectRatio: 1.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: [
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
              GridTile(child: new FlutterLogo()),
            ]));
  }
}
