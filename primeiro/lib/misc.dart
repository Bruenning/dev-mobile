import "package:flutter/material.dart";
//import "package:font_awesome_flutter/font_awesome_flutter.dart";

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
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Olá pessoal!");
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.red,
            child: Icon(Icons.access_alarm)),
        body: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          controller: _controller,
          children: [
            CircularProgressIndicator(
                backgroundColor: Colors.red, strokeWidth: 10.0),
            LinearProgressIndicator(),
            //  Icon(FontAwesomeIcons.angry),
            Image.asset("img/imagem.jpg"),
            Image.network(
                "https://cdn.auth0.com/blog/illustrations/flutter.png"),
            Chip(
                label: Text("Este é um chip"),
                avatar: CircleAvatar(
                    backgroundImage: AssetImage("img/imagem.jpg"))),
          ],
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class List1 extends StatelessWidget {
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
        home: Scaffold(
            appBar: AppBar(
              title: Text(appName),
            ),
            body: ListView(
              children: [
                ListTile(leading: Icon(Icons.gif), title: Text("1")),
                ListTile(leading: Icon(Icons.book), title: Text("2")),
                ListTile(leading: Icon(Icons.call), title: Text("3")),
                ListTile(leading: Icon(Icons.dns), title: Text("4")),
                ListTile(leading: Icon(Icons.cake), title: Text("5")),
              ],
            )));
  }
}

class List2 extends StatelessWidget {
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
        home: Scaffold(
            appBar: AppBar(
              title: Text(appName),
            ),
            body: ListView(
              children: [
                ListTile(leading: Icon(Icons.pets), title: Text("6")),
                ListTile(leading: Icon(Icons.poll), title: Text("7")),
                ListTile(leading: Icon(Icons.face), title: Text("8")),
                ListTile(leading: Icon(Icons.home), title: Text("9")),
                ListTile(leading: Icon(Icons.adb), title: Text("10")),
              ],
            )));
  }
}

class List3 extends StatelessWidget {
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
        home: Scaffold(
            appBar: AppBar(
              title: Text(appName),
            ),
            body: ListView(
              children: [
                ListTile(leading: Icon(Icons.dvr), title: Text("11")),
                ListTile(leading: Icon(Icons.hd), title: Text("12")),
                ListTile(leading: Icon(Icons.toc), title: Text("13")),
                ListTile(leading: Icon(Icons.tv), title: Text("14")),
                ListTile(leading: Icon(Icons.help), title: Text("15")),
              ],
            )));
  }
}
