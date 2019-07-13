import 'package:flutter/material.dart';
import 'package:handi/h1.dart';
import 'package:handi/h2.dart';
import 'package:handi/h3.dart';
import 'package:handi/h4.dart';
import 'package:handi/homeapp.dart';
import 'package:handi/login_page.1.dart';
import 'package:handi/login_page2.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    LoginPage1.tag: (context) => LoginPage1(),
    LoginPage2.tag: (context) => LoginPage2(),
    Homeapp.tag: (context) => Homeapp(),
    Home1.tag: (context) => Home1(),
    Home2.tag: (context) => Home2(),
    Home3.tag: (context) => Home3(),
    Home4.tag: (context) => Home4(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
