import 'package:flutter/material.dart';

List product = [
  {
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': '1000',
    'Category': 'Men'
  },
  {
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': '1000',
    'Category': 'Men'
  },
  {
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://pngriver.com/wp-content/uploads/2017/11/jents-Dress-Shirts-free-PNG-transparent-background-images-free-download-clipart-pics-dress-shirt-png-image-914-799x1024.png',
    'Price': '1000',
    'Category': 'Men'
  },
  {
    'Title': 'Shirt',
    'Description': 'This is a blue colour denim',
    'Link':
        'https://th.bing.com/th/id/OIP.CenRsuUA4_pO9KRFAcMb-QHaIO?pid=Api&w=497&h=552&rs=1',
    'Price': '1000',
    'Category': 'Men'
  }
];

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
                  Image.network(product[index]['Link']),
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
                                onPressed: null)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )));
        },
      ),
    );
  }
}
