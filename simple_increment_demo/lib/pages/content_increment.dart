// Importing the material package for Flutter UI components
import 'package:flutter/material.dart';

// Creating a StatefulWidget named ContentIncrementPage
class ContentIncrementPage extends StatefulWidget {
  // Override the createState method to create the state for ContentIncrementPage
  @override
  _ContentIncrementPageState createState() => _ContentIncrementPageState();
}

// Creating the state class for ContentIncrementPage
class _ContentIncrementPageState extends State<ContentIncrementPage> {
  // Declaring a variable to store the count value
  int _counter = 0;

  // Method to increment the count value when the button is pressed
  void _incrementCounter() {
    // Calling setState to update the UI with the new count value
    setState(() {
      _counter++;
    });
  }

  // Building the UI for ContentIncrementPage
  @override
  Widget build(BuildContext context) {
    // Returning a Scaffold widget for basic layout structure
    return Scaffold(
      // Setting the app bar title
      appBar: AppBar(
        title: Text('Content Incrementation Page'),
      ),
      // Creating the main body of the page
      body: Center(
        // Centering the content vertically and horizontally
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Displaying a static text
            const Text(
              'You have pushed the button this many times:',
            ),
            // Displaying the current count value
            Text(
              '$_counter',
              // Applying the headline6 text style
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      // Adding a floating action button for incrementing the count value
      floatingActionButton: FloatingActionButton(
        // Setting the onPressed callback to the incrementCounter method
        onPressed: _incrementCounter,
        // Adding a tooltip for the button
        tooltip: 'Increment',
        // Adding an icon to the button
        child: Icon(Icons.add),
      ),
    );
  }
}
