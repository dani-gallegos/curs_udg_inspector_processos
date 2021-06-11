import 'package:cursudg_client/services/authenticator/authenticator_service.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _authenticator = AuthenticatorService();

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Form(
                  key: _formKey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Usuari',
                          hintText: 'Escriu un text',
                        ),
                        autofocus: true,
                        controller: _userController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'El text és obligatori';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password),
                          labelText: 'Password',
                          hintText: 'Escriu un text',
                        ),
                        autofocus: true,
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'El text és obligatori';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text('Accedeix'),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              if (await _authenticator.login(
                                  _userController.text, _passwordController.text)) {
                                Navigator.pushNamed(context, '/list');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Usuari o password no vàlids.')));
                              }
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
