import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          child: Column(
            children: [
              Align(
                child: Text(
                  "Hello there,\nwelcome back",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
