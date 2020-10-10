import 'package:flutter/material.dart';
import './EditProfile.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esmart"),
      ),
      body: Card(
        elevation: 5,
        child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext ctx) => EditProfile()));
                },
                child: Icon(Icons.edit))
          ],
        ),
      ),
    );
  }
}
