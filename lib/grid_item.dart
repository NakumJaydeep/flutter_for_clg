import 'package:flutter/material.dart';
// Custom widget for displaying one GridView item
class GridItem extends StatelessWidget {
  // Variable to store the item title
  final String title;
  // Constructor receives the title from HomeScreen
  const GridItem({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    // Card gives a card-like design to each item
    return Card(
      // Add shadow below the card
      elevation: 5,
      // Container is used to design the card
      child: Container(
        // Set background color and rounded corners
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          // Make corners rounded
          borderRadius: BorderRadius.circular(15),
        ),
        // Center places text in the middle
        child: Center(
          child: Text(
            // Display the title received from HomeScreen
            title,
            // Text styling
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}