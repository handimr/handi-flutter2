import 'package:flutter/material.dart';
import 'package:handi/login_page.1.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

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

    final namalengkap = TextField(
      decoration: InputDecoration(labelText: 'Nama Lengkap'),
    );

    final namaprofile = TextField(
      decoration: InputDecoration(labelText: 'Nama Profile'),
    );

    final email = TextField(
      decoration: InputDecoration(labelText: 'Email'),
    );

    final password = TextField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
    );

    final checkbox = new CheckboxListTile(
      value: _isChecked,
      onChanged: (bool value) {
        onChanged(value);
      },
      title: new Text('Saya setuju dengan peraturan H police'),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.lightBlueAccent,
    );

    final signup = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage1.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Continue', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final masuk = FlatButton(
      child: Text(
        'Sudah siap account? Masuk',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage1.tag);
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
            namalengkap,
            SizedBox(height: 8.0),
            namaprofile,
            email,
            password,
            checkbox,
            signup,
            masuk
          ],
        ),
      ),
    );
  }
}
