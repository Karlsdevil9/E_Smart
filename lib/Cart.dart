import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Providers/Cart_provider.dart';

class Cart extends StatelessWidget {
  static const routeName = '/Cart';
  List orders = [];

  void placeOrder() {
    debugPrint(orders[0]['title']);
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Total Amount : ${cart.totalAmount}"),
              RaisedButton(
                child: Text("Place Order"),
                onPressed: () {
                  placeOrder();
                },
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: cart.itemCount,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 100,
                  child: Image.network(cart.items.values.toList()[index].img),
                ),
                title: Text(cart.items.values.toList()[index].title),
                subtitle: Text(
                    "Quantity : ${cart.items.values.toList()[index].quantity.toString()}"),
                trailing:
                    Text((cart.items.values.toList()[index].price).toString()),
              ),
            );
          },
        ));
  }
}
