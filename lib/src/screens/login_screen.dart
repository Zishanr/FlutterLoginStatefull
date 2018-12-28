import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formStateGlobalKey = GlobalKey<FormState>();
  String emailValue, passwordValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formStateGlobalKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 15.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
        hintText: 'xxx@gmail.com',
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email address cant be null';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      onSaved: (String value) {
        emailValue = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
          hintText: 'Password'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter valid password';
        }
        if (value.length < 4) {
          return 'Password lenght must be at least 4 characters';
        }
        return null;
      },
      onSaved: (String value) {
        passwordValue = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        // Callback - when user press this button this function will execute.
//        formStateGlobalKey.currentState.reset();
        if (formStateGlobalKey.currentState.validate()) {
          formStateGlobalKey.currentState.save();
          print('Hit API with $emailValue and $passwordValue');
        }
      },
      textColor: Colors.white,
      child: Text('Login'),
      color: Colors.blue,
    );
  }
}
