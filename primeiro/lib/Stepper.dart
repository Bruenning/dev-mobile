import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatefulWidget {
  ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class _ExemploInicial extends State {
  var _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stepper(
        type: StepperType.horizontal,
        currentStep: _currentStep,
        onStepContinue:
            _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel:
            _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: [
          Step(
              title: Text("Get ready"),
              isActive: true,
              content: Text("Let's begin!")),
          Step(
              title: Text("Get set"),
              isActive: true,
              content: Text("Ok, quase lá!")),
          Step(title: Text("Go!"), isActive: true, content: Text("E fim!")),
        ],
      )),
    );
  }
}
