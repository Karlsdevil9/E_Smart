import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  final Map item;
  ProductOverviewScreen({this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Esmart")),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Image.network(item['Link']),
          )
        ],
      ),
    );
  }
}
