import 'package:flutter/material.dart';
import './LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Esmart',
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
