import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Exemplo animação';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var _color = Colors.red;
  var _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _color = Colors.blue;
            _fontSize = 40.0;
          });
        },
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: Duration(seconds: 2),
            style: TextStyle(color: _color, fontSize: _fontSize),
            child: Text("Um texto aqui"),
          ),
        ),
      )
    ]);
  }
}
