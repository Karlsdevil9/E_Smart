import 'package:flutter/material.dart';
import './Curvepainter.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: CustomPaint(
        painter: CurvePainter(),
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 5, 25, 0),
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              Align(
                child: Text(
                  "Get on Board",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Sign Up"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("I am already a member"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
