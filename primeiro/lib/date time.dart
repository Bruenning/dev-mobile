import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home()));
  }
}

class Home extends StatelessWidget {
  Future<void> _selectDate(inContext) async {
    DateTime? selectedDate = await showDatePicker(
      context: inContext,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 1)),
      lastDate: DateTime.now().add(Duration(days: 1095)),
    );
    print(selectedDate);
  }

  Future<void> _selectTime(inContext) async {
    TimeOfDay? selectedTime =
        await showTimePicker(context: inContext, initialTime: TimeOfDay.now());
    print(selectedTime);
  }

  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
        body: Column(children: [
      Container(height: 50),
      ElevatedButton(
          child: Text("Selecionar data"),
          onPressed: () => _selectDate(inContext)),
      ElevatedButton(
          child: Text("Selecionar hora"),
          onPressed: () => _selectTime(inContext)),
    ]));
  }
}
