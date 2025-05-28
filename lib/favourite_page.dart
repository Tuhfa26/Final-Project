import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  final List<Map<String, dynamic>> favourites;

  FavouritePage({required this.favourites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Products"),
        backgroundColor: Colors.teal,
      ),
      body:
          favourites.isEmpty
              ? Center(child: Text("No favourites added."))
              : ListView.builder(
                itemCount: favourites.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.favorite, color: Colors.red),
                    title: Text(favourites[index]['name']),
                    subtitle: Text(
                      "\$${favourites[index]['price'].toStringAsFixed(2)}",
                    ),
                  );
                },
              ),
    );
  }
}
