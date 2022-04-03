import 'package:app_teste/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/imagens/LOGO_PRETO.png')),
                  Container(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12, top: 12, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (Text) {
                              email = Text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (Text) {
                              password = Text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RaisedButton(
                            color: Color.fromARGB(255, 191, 129, 201),
                            textColor: Colors.white,
                            onPressed: () {
                              if (email == "gustavo wilker" &&
                                  password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                print('Login inválido');
                              }
                            },
                            child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/imagens/back_logo.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.1),
          ),
          _body(),
        ],
      ),
    );
  }
}
