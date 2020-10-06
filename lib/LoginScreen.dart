import 'package:flutter/material.dart';
import './Curvepainter.dart';
import './SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
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
                "Hello there,\nwelcome back",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new SignupScreen()));
              },
              child: Text("New here? SignUp instead"),
            ),
          ],
        ),
      ),
    ));
  }
}
