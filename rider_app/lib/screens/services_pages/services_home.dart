import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ServicePage(),
    );
  }
}

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ServiceCard(
              imagePath:
                  'assets/images/rental.png', // replace with your image path
              label: 'Rental',
            ),
            SizedBox(height: 16),
            ServiceCard(
              imagePath:
                  'assets/images/preebook.png', // replace with your image path
              label: 'Pre book',
            ),
            SizedBox(height: 16),
            ServiceCard(
              imagePath:
                  'assets/images/userdriver.png', // replace with your image path
              label: 'User- Driver',
            ),
            SizedBox(height: 16),
            ServiceCard(
              imagePath:
                  'assets/images/outstation.png', // replace with your image path
              label: 'Out station',
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const ServiceCard({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Make the card fill the available width
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 236, 226, 226), // Use hex color code
        borderRadius: BorderRadius.circular(20), // Slightly smaller radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 4), // Slightly increased offset
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 120, // Slimmer height
            width: 100, // Slimmer width
          ),
          SizedBox(width: 16), // Adjust spacing as needed
          Expanded(
            // Make the text take the remaining space
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18, // Slightly reduced font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios, // Arrow icon
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
