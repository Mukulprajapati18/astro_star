import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl; // Added image URL property

  CardItem({
    required this.title,
    required this.description,
    required this.imageUrl, // Pass image URL to constructor
  });

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {

  @override
  Widget build(BuildContext context) {
    // Capture values from widget properties
    String title = widget.title;
    String description = widget.description;
    String imageUrl = widget.imageUrl; // Access image URL

    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to start
          children: [
            // --- Image ---
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Match card border radius
              child: Image.asset(
                imageUrl,
                height: 150, // Adjust image height as needed
                fit: BoxFit.cover, // Fill the container
              ),
            ),
            const SizedBox(height: 10), // Add spacing after image

            // --- Title ---
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // --- Subtitle ---
            Text(
              description,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),

            // --- Other details (optional) ---
            // ... (your code for other details)
          ],
        ),
      ),
    );
  }
}
