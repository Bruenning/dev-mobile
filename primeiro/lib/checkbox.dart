import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatefulWidget {
  ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class _ExemploInicial extends State {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var _checkboxValue = false;
  var _switchValue = false;
  var _sliderValue = .3;
  var _radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.all(50.0),
                child: Form(
                  key: this._formKey,
                  child: Column(children: [
                    Row(children: [
                      Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool? inValue) {
                            setState(() {
                              _checkboxValue = inValue!;
                            });
                          }),
                      Text("Opção Check")
                    ]),
                    Text("Opção switch: "),
                    Switch(
                        value: _switchValue,
                        onChanged: (bool inValue) {
                          setState(() {
                            _switchValue = inValue;
                          });
                        }),
                    Text("Volume:"),
                    Slider(
                      min: 0,
                      max: 20,
                      value: _sliderValue,
                      onChanged: (inValue) {
                        setState(() => _sliderValue = inValue);
                      },
                    ),
                    Row(children: [
                      Radio(
                          value: 1,
                          groupValue: _radioValue,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue = inValue!;
                            });
                          }),
                      Text("Opção 1"),
                    ]),
                    Row(children: [
                      Radio(
                          value: 2,
                          groupValue: _radioValue,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue = inValue!;
                            });
                          }),
                      Text("Opção 2"),
                    ]),
                    Row(children: [
                      Radio(
                          value: 3,
                          groupValue: _radioValue,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue = inValue!;
                            });
                          }),
                      Text("Opção 3"),
                    ]),
                  ]),
                ))));
  }
}
