import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Center(
          child: RaisedButton(
            child: Text('LOGIN'),
            onPressed: () {
              // The current page complete gets replaced with the indicated one.
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ));
  }
}
