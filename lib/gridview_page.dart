import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  final List<String> categories = [
    "Electronics",
    "Fashion",
    "Books",
    "Furniture",
    "Toys",
    "Groceries",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.teal[100],
              elevation: 8,
              child: Center(
                child: Text(categories[index], style: TextStyle(fontSize: 18)),
              ),
            );
          },
        ),
      ),
    );
  }
}
