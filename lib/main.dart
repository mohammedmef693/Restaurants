import 'package:app_note/auth/login.dart';
import 'package:app_note/auth/signup.dart';
import 'package:app_note/home/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            TextTheme(headline6: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      home: login(),
      routes: {
        "login": (context) => login(),
        "signup": (context) => signup(),
        "homepage": (context) => homepage()
      },
    );
  }
}
