import 'package:flutter/material.dart';
import 'package:adidas/home_screen.dart'; // Ensure this path is correct

void main() {
  runApp(myApp());
}

Widget myApp() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false, // Optional: Removes debug banner
    home: HomeScreen(), // Correctly setting HomeScreen as the home widget
  );
}
