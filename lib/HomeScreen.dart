import 'package:flutter/material.dart';
// Import our custom GridItem widget
import 'grid_item.dart';
// HomeScreen displays our GridView
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // List of items that we want to display in GridView
  final List<String> items = const [
    "Mobile",
    "Laptop",
    "Tablet",
    "Watch",
    "Camera",
    "Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold provides AppBar and Body
    return Scaffold(
      // AppBar is displayed at the top
      appBar: AppBar(
        title: const Text("Simple GridView"),
        // Set AppBar background color
        backgroundColor: Colors.blue,
      ),
      // Padding gives space around the GridView
      body: Padding(
        padding: const EdgeInsets.all(10),
        // GridView.builder creates items dynamically
        child: GridView.builder(
          // Total number of items in the list
          itemCount: items.length,
          // Defines the structure of the grid
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(

            // Display 2 items in each row
            crossAxisCount: 3,
            // Space between rows
            mainAxisSpacing: 5,
            // Space between columns
            crossAxisSpacing: 5,
          ),

          // This method creates each grid item
          itemBuilder: (context, index) {
            // Return our custom GridItem widget
            return GridItem(
              // Send item name to GridItem
              title: items[index],
            );
          },
        ),
      ),
    );
  }
}