import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top : 15.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return (TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
        hintText: 'xxx@gmail.com',
      ),
      keyboardType: TextInputType.emailAddress,
    ));
  }

  Widget passwordField() {
    return (TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
          hintText: 'Password'),
    ));
  }

  Widget submitButton() {
    return (RaisedButton(
          onPressed: () {
            print("Clicked");
          },
          textColor: Colors.white,
          child: Text('Login'),
          color: Colors.blue,
        ));
  }
}
