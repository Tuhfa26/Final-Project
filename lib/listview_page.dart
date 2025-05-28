import 'package:flutter/material.dart';
import 'converter_page.dart';
import 'favourite_page.dart';

class ListviewPage extends StatefulWidget {
  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  final List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 1000.0},
    {"name": "Shoes", "price": 60.0},
    {"name": "Book", "price": 20.0},
    {"name": "Chair", "price": 45.0},
    {"name": "Watch", "price": 80.0},
    {"name": "T-shirt", "price": 25.0},
    {"name": "BackPack", "price": 50.0},
    {"name": "SunGlass", "price": 70.0},
    {"name": "Sugar", "price": 5.6},
    {"name": "Fan", "price": 30.0},
  ];

  List<Map<String, dynamic>> favourites = [];

  void addToFavourites(Map<String, dynamic> product) {
    if (!favourites.contains(product)) {
      setState(() {
        favourites.add(product);
      });
    }
  }

  void goToFavouritesPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavouritePage(favourites: favourites),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(icon: Icon(Icons.favorite), onPressed: goToFavouritesPage),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(products[index]['name']),
            subtitle: Text("\$${products[index]['price']}"),
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () => addToFavourites(products[index]),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ConverterPage(
                        productName: products[index]['name'],
                        productPrice: products[index]['price'],
                      ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
