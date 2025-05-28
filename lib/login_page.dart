// login_page.dart
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final String emailPattern = r"^[a-z\d]{5,}@gmail.com";
  final String passPattern = r"^.{6,}$";

  void validateLogin() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Catalogue & Converter',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 40),
              Icon(Icons.account_circle, size: 90, color: Colors.teal),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Welcome! Please login",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (!RegExp(emailPattern).hasMatch(value!)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (!RegExp(passPattern).hasMatch(value!)) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: validateLogin,
                icon: Icon(Icons.login),
                label: Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
