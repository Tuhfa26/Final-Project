import 'package:flutter/material.dart';
import 'gridview_page.dart';
import 'listview_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // AppBar title color
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 70, color: Colors.teal),
              SizedBox(height: 20),
              Text(
                "Welcome to the App!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[700], // Colored welcome text
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridviewPage()),
                  );
                },
                icon: Icon(Icons.grid_view),
                label: Text("Go to Categories"),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListviewPage()),
                  );
                },
                icon: Icon(Icons.list),
                label: Text("Go to Products"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
