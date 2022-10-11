import "package:flutter/material.dart";
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

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
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.green,
      ),
    ));
    // home: Home(
    //  title: appName,
    /*    ),
    );*/
  }
}

class Home extends StatelessWidget {
  final String? title;

  Home({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          DragTarget(
              builder: (BuildContext context, List<Object?> accepted,
                  List<dynamic> rejected) {
                return Container(
                    width: 200, height: 200, color: Colors.lightBlue);
              },
              onAccept: (data) => print(data)),
          Container(height: 50),
          Draggable(
              data: "Eu fui arrastado",
              child: Container(width: 100, height: 100, color: Colors.red),
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ))
        ]));
  }
}
