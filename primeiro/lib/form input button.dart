import 'package:flutter/material.dart';

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatefulWidget {
  ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class LoginData {
  String username = "";
  String password = "";
}

class _ExemploInicial extends State {
  LoginData _loginData = new LoginData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.all(50.0),
                child: Form(
                  key: this._formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? inValue) {
                            if (inValue!.length == 0) {
                              return "Por favor entre com o usuário";
                            }
                            return null;
                          },
                          onSaved: (String? inValue) {
                            this._loginData.username = inValue!;
                          },
                          decoration: InputDecoration(
                              //opcional
                              hintText: "nome@servidor.com",
                              labelText: "Username (e-mail)")),
                      TextFormField(
                          obscureText: true,
                          validator: (String? inValue) {
                            if (inValue!.length < 8) {
                              return "Senha deve ser maior ou igual 8 caracteres";
                            }
                            return null;
                          },
                          onSaved: (String? inValue) {
                            this._loginData.password = inValue!;
                          },
                          decoration: InputDecoration(
                              //opcional
                              hintText: "Senha",
                              labelText: "Senha")),
                      ElevatedButton(
                        child: Text("Login"),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            print("Usuário: ${_loginData.username}");
                            print("Senha: ${_loginData.password}");
                          }
                        },
                      )
                    ],
                  ),
                ))));
  }
}
