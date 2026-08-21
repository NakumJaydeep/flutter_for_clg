import 'package:app1/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
// Program execution starts from main()
void main() {
  // Run our Flutter application
  runApp(const MyApp());
}
// MyApp is the main/root widget of our application
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the basic structure of a Flutter app
    return MaterialApp(
      // Remove the DEBUG banner from the top-right corner
      debugShowCheckedModeBanner: false,
      // Open HomeScreen when the application starts
      home: const HomeScreen(),
    );
  }
}