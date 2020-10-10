import 'package:flutter/material.dart';
import './EditProfile.dart';

class Appdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text("Esmart"),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext ctx) => EditProfile()));
          },
          title: Text("Edit Profile"),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
          },
          title: Text("Orders"),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
          },
          title: Text("Log Out"),
        )
      ],
    );
  }
}
