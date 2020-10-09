import 'package:flutter/material.dart';
import './ProductOverviewScreen.dart';
import './App_drawer.dart';
import './Cart.dart';

List product = [
  {
    'id': '1',
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': 1000,
    'Category': 'Men',
    'Quantity': 1
  },
  {
    'id': '2',
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': 1000,
    'Category': 'Men',
    'Quantity': 1
  },
  {
    'id': '3',
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': 1000,
    'Category': 'Men',
    'Quantity': 1
  },
  {
    'id': '4',
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://th.bing.com/th/id/OIP.CenRsuUA4_pO9KRFAcMb-QHaIO?pid=Api&w=497&h=552&rs=1',
    'Price': 1000,
    'Category': 'Men',
    'Quantity': 1
  }
];
List cartItems = [];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                              onPressed: null),
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
