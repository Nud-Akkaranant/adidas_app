import 'package:adidas/home_screen_nav.dart';
import 'package:flutter/material.dart';
import 'package:adidas/home_screen.dart'; // Ensure this path is correct

void main() {
  runApp(myApp());
}

Widget myApp() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false, // Optional: Removes debug banner
    home: HomeScreenNav(), // Correctly setting HomeScreen as the home widget
  );
}
