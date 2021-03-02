import 'package:flutter/material.dart';

// The main function is the starting point for all flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.red.shade200,
        body: Center(
          child : Image(
            image: AssetImage('images/rich.png'),
          ),
        ),
      ),
    ),
  );
}
