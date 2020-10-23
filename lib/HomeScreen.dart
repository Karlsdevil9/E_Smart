import 'package:flutter/material.dart';
import './ProductOverviewScreen.dart';
import './App_drawer.dart';
import './Cart.dart';
import './Providers/Products_providers.dart';
import 'package:provider/provider.dart';

List cartItems = [];
List wishList = [];
bool isWishList = false;

class HomeScreen extends StatefulWidget {
  HomeScreen({isWishList});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final product = productsData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Esmart'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => Cart(
                            cartItems: cartItems,
                          )),
                );
              },
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Appdrawer(),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 8.0),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            child: Card(
                child: Stack(
              children: [
                GestureDetector(
                    child: Image.network(product[index]['Link']),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProductOverviewScreen(
                                    item: product[index],
                                  )));
                    }),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {
                                if (product[index]['fav'] >= false)
                                  product[index]['fav'] = true;
                                else
                                  product[index]['fav'] = true;
                              }),
                          Text(
                            product[index]['Title'],
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {
                                int id = cartItems.indexWhere((element) =>
                                    element['id'] == product[index]['id']);
                                if (id >= 0)
                                  cartItems[id]['Quantity'] =
                                      cartItems[id]['Quantity'] + 1;
                                else
                                  cartItems.add(product[index]);
                              })
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
