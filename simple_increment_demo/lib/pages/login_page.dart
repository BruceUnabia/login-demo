import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define TextEditingController for username and password fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Scaffold widget provides a basic layout structure
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'), // App bar title
      ),
      body: Container(
        // Container to hold the content with padding and decoration
        padding: EdgeInsets.all(20.0),
        // Apply gradient decoration to the container
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          ),
        ),
        // Center widget to align content in the middle vertically
        child: Center(
          // ListView to make the content scrollable
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50), // Add vertical spacing
              // Welcome message displayed using Text widget
              Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50), // Add vertical spacing
              // Text form field for entering username
              TextFormField(
                controller: _usernameController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add vertical spacing
              // Text form field for entering password
              TextFormField(
                controller: _passwordController,
                style: TextStyle(color: Colors.black),
                obscureText: true, // Hide password characters
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add vertical spacing
              // Elevated button for login functionality
              ElevatedButton(
                onPressed: () {
                  // Check if username and password are entered
                  if (_usernameController.text.isNotEmpty &&
                      _passwordController.text.isNotEmpty) {
                    // Navigate to the content incrementation page
                    Navigator.pushNamed(context, '/contentIncrement');
                  } else {
                    // Show error message if username or password is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter a username and password.'),
                      ),
                    );
                  }
                },
                child: Text('Login'), // Button text
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of TextEditingController objects to avoid memory leaks
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
