import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  List cartItems = [];
  Cart({this.cartItems});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Total Amount"),
              RaisedButton(
                onPressed: () {},
                child: Text("Place Order"),
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 100,
                  child: Image.network(cartItems[index]["Link"]),
                ),
                title: Text(cartItems[index]["Title"]),
                subtitle: Text(cartItems[index]["Quantity"].toString()),
                trailing: Text(cartItems[index]["Price"]),
              ),
            );
          },
        ));
  }
}
