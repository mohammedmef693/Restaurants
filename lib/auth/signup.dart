import 'dart:ui';

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  String get name => "images/1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              width: 200,
              height: 50,
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
                  decoration: InputDecoration(
                      hintText: " email address",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.email,
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
                      Text("if you have account ",
                          style: TextStyle(fontSize: 20)),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
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
                      onPressed: () {},
                      child: Text("regester", style: TextStyle(fontSize: 20))),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
