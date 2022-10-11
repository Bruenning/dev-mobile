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
  PageController _controller = PageController(
    initialPage: 0,
  );
  int line = -1;
  final String title = "PageView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: PopupMenuButton(
          onSelected: (String result) {
            print(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem(value: "copy", child: Text("Copia")),
                PopupMenuItem(value: "cut", child: Text("Recorta")),
                PopupMenuItem(value: "paste", child: Text("Cola")),
              ]),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
