import 'package:flutter/material.dart';
import 'package:handi/h2.dart';

import 'package:handi/home_page.dart';
import 'package:handi/login_page.dart';

class LoginPage1 extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState1 createState() => _LoginPageState1();
}

class _LoginPageState1 extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/handi.jpg'),
      ),
    );

    final email = TextField(
      decoration: InputDecoration(labelText: 'Email'),
    );

    final password = TextField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
    );

    final signin = Padding(
      padding: const EdgeInsets.all(0.0),
      child: RaisedButton(
        child: Text(
          'SIGN IN',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.lightBlueAccent,
        splashColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(20.0),
        onPressed: () {
          Navigator.of(context).pushNamed(Home2.tag);
        },
      ),
    );

    final lupapass = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final signinfb = Padding(
      padding: const EdgeInsets.all(0.0),
      child: RaisedButton(
        child: Text(
          'SIGN IN WITH FACEBOOK',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.lightBlueAccent,
        splashColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(20.0),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
      ),
    );

    final signup = FlatButton(
      child: Text(
        "Don't have an account ? Sign Up",
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pop(LoginPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(
              height: 48.0,
            ),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            signin,
            lupapass,
            SizedBox(height: 0.0),
            signinfb,
            signup
          ],
        ),
      ),
    );
  }
}
