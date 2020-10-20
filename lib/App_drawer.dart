import 'package:flutter/material.dart';
import './MyAccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './LoginScreen.dart';

class Appdrawer extends StatelessWidget {
  List wishList = [];
  List cartList = [];
  Appdrawer({wishList, cartList});
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
                    builder: (BuildContext ctx) => MyAccount()));
          },
          title: Text("Edit Profile"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, new MaterialPageRoute());
          },
          title: Text("WishList"),
        ),
        ListTile(
          onTap: () {
            FirebaseAuth.instance.signOut().then(
                (value) => Navigator.pushReplacementNamed(context, '/login'));
          },
          title: Text("Log Out"),
        )
      ],
    );
  }
}
