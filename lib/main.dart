import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Converter App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
