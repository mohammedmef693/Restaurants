import 'dart:ui';

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String get name => "images/1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              width: 400,
              height: 150,
              image: AssetImage(
                name,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 10,
                  maxLines: 1,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      hintText: " user name",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLength: 10,
                  maxLines: 1,
                  style: TextStyle(fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: " password",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.password,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you have not account ",
                          style: TextStyle(fontSize: 20)),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                        child: Text(
                          "click her",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("homepage");
                      },
                      child: Text("login", style: TextStyle(fontSize: 20))),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
