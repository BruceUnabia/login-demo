import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/content_increment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // Set login page as initial route
        '/contentIncrement': (context) => ContentIncrementPage(),
      },
    );
  }
}
