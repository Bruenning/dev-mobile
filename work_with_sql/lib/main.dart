import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:work_with_sql/People.dart';


//crud with a sqlite database
People people = People();
List<People> peopleList = [];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void inicializatedCount(){
    setState(() {
      _counter = peopleList.length-1;
    });
  }

  @override
  void initState() {
    super.initState();
    inicializatedCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BootstrapContainer(
        fluid:true,
					decoration: const BoxDecoration(
						color: Colors.white,
					),
					padding: const EdgeInsets.only(top:0),
          children: <Widget>[
            BootstrapRow(
              children: <BootstrapCol>[
                BootstrapCol(
                  sizes:'col-12',
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Digite um Nome",
                        icon: Icon(Icons.numbers, color: Colors.white),
                				errorStyle: TextStyle (color: Colors.red),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        hoverColor: Colors.black,
                      ),
                      keyboardType: TextInputType.name,
                      onSaved: (newValue) => people.name = newValue!,
                      validator: (value) {
                        if(people.name != "") {
                          return "Nome inválido";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                BootstrapCol(
                  sizes:'col-12',
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Digite um Email",
                        icon: Icon(Icons.numbers, color: Colors.white),
                				errorStyle: TextStyle (color: Colors.red),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        hoverColor: Colors.black,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (newValue) => people.email = newValue!,
                      validator: (value) {
                        if(people.email != "") {
                          return "Email inválido";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                BootstrapCol(
                  sizes:'col-12',
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Digite um Telefone",
                        icon: Icon(Icons.numbers, color: Colors.white),
                				errorStyle: TextStyle (color: Colors.red),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        hoverColor: Colors.black,
                        
                      ),
                      keyboardType: TextInputType.phone,
                      onSaved: (newValue) => people.phone = newValue!,
                      validator: (value) {
                        if(people.phone != "") {
                          return "Telefone inválido";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                BootstrapCol(
                  sizes:'col-12',
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Digite um número", icon: Icon(Icons.numbers, color: Colors.white),
                				errorStyle: TextStyle (color: Colors.red),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        hoverColor: Colors.black,
                        
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (newValue) => people.age = int.parse(newValue!),
                      validator: (value) {
                        if(people.age != 0) {
                          return "Idade inválida";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12',
                  child: ElevatedButton(
                    onPressed: () {
                      people.save(null);

                      setState(() {
                        peopleList[_counter] = people;
                        _incrementCounter();

                        for (var i = 0; i < peopleList.length; i++) {
                          print(peopleList[i].name);
                        }
                      });


                    },
                    child: const Text("Salvar"),
                  ),
                )
              ], 
            )
          ]
      ),
    );
  }
}
