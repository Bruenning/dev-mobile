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
  var _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: Center(
          child: AnimatedCrossFade(
            duration: Duration(seconds: 2),
            firstChild:
                FlutterLogo(size: 100.0, style: FlutterLogoStyle.horizontal),
            secondChild:
                FlutterLogo(size: 100.0, style: FlutterLogoStyle.stacked),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
      )
    ]);
  }
}
