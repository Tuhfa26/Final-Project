import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {
  final String productName;
  final double productPrice;

  ConverterPage({required this.productName, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    double bdt = productPrice * 110;

    return Scaffold(
      appBar: AppBar(
        title: Text("Price Converter"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  "USD: \$${productPrice.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                SizedBox(height: 8),
                Text(
                  "BDT: ${bdt.toStringAsFixed(2)} Tk",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
