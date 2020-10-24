import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Providers/Cart_provider.dart';

class Cart extends StatefulWidget {
  final cart = Provider.of<CartProvider>(context, listen: false);

  List cartItems = [];

  Cart({this.cartItems});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List orders = [];

  void placeOrder() {
    orders = List.from(widget.cartItems);
    setState(() {
      widget.cartItems.clear();
    });
    debugPrint(orders[0]['title']);
  }

  @override
  Widget build(BuildContext context) {
    int _totalamount = 0;
    for (var i = 0; i < widget.cartItems.length; i++) {
      _totalamount +=
          widget.cartItems[i]["Price"] * widget.cartItems[i]["Quantity"];
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Total Amount : ${_totalamount}"),
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
          itemCount: widget.cartItems.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 100,
                  child: Image.network(widget.cartItems[index]["Link"]),
                ),
                title: Text(widget.cartItems[index]["Title"]),
                subtitle: Text(
                    "Quantity : ${widget.cartItems[index]["Quantity"].toString()}"),
                trailing: Text((widget.cartItems[index]["Price"] *
                        widget.cartItems[index]["Quantity"])
                    .toString()),
              ),
            );
          },
        ));
  }
}
