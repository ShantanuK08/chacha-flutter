//Main working
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HistoryScreen(),
  ));
}

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _selectedSegment = 0; // 0 for Completed, 1 for Upcoming, 2 for Cancelled

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text('History', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Segmented control for Completed, Upcoming, Cancelled
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSegmentButton("Completed", 0),
                _buildSegmentButton("Upcoming", 1),
                _buildSegmentButton("Cancelled", 2),
              ],
            ),
          ),
          Expanded(
            child: _buildSegmentContent(), // Updated to show different content based on segment
          ),
        ],
      ),
    );
  }

  // Function to build each segment button with animation
  Widget _buildSegmentButton(String text, int index) {
    bool isSelected = _selectedSegment == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSegment = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber : Colors.grey[200],
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(index == 0 ? 15 : 0),
            right: Radius.circular(index == 2 ? 15 : 0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.black54,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16, // Slightly larger font size
          ),
        ),
      ),
    );
  }

  // Function to show different content based on selected segment
  Widget _buildSegmentContent() {
    if (_selectedSegment == 0) {
      return CompletedScreen(); // Completed rides
    } else if (_selectedSegment == 1) {
      return UpcomingScreen(); // Upcoming rides
    } else {
      return CancelledScreen(); // Cancelled rides
    }
  }
}

// Separate screen for Completed
class CompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        // Card 1 - Auto
        _buildRideCard(
          imagePath: 'assets/images/auto_his.png',
          vehicleType: 'Auto Plus',
          seats: 3,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Completed',
        ),
        SizedBox(height: 10),
        // Card 2 - Car
        _buildRideCard(
          imagePath: 'assets/images/taxi_his.png',
          vehicleType: 'Auto Plus',
          seats: 4,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Completed',
        ),
      ],
    );
  }
}

// Separate screen for Upcoming
class UpcomingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        // Card 1 - Auto
        _buildRideCard(
          imagePath: 'assets/images/auto_his.png',
          vehicleType: 'Auto Plus',
          seats: 3,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Upcoming', // Updated status
        ),
        SizedBox(height: 10),
        // Card 2 - Car
        _buildRideCard(
          imagePath: 'assets/images/taxi_his.png',
          vehicleType: 'Auto Plus',
          seats: 4,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Upcoming', // Updated status
        ),
      ],
    );
  }
}

// Separate screen for Cancelled
class CancelledScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        // Card 1 - Auto
        _buildRideCard(
          imagePath: 'assets/images/auto_his.png',
          vehicleType: 'Auto Plus',
          seats: 3,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Cancelled', // Updated status
        ),
        SizedBox(height: 10),
        // Card 2 - Car
        _buildRideCard(
          imagePath: 'assets/images/taxi_his.png',
          vehicleType: 'Auto Plus',
          seats: 4,
          pickupLocation: 'shivji nagar',
          dropLocation: 'Ravivar Path',
          rating: 4.0,
          status: 'Cancelled', // Updated status
        ),
      ],
    );
  }
}

// Reusable ride card widget with updated styles
Widget _buildRideCard({
  required String imagePath,
  required String vehicleType,
  required int seats,
  required String pickupLocation,
  required String dropLocation,
  required double rating,
  required String status,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    elevation: 5,
    shadowColor: Colors.black54,
    color: Color(0xFFEDEDED), // Updated card color
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 60,
            height: 60,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$vehicleType  🚻 $seats',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), // Larger text size
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.black54),
                    SizedBox(width: 5),
                    Text(pickupLocation),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_searching, size: 16, color: Colors.black54),
                    SizedBox(width: 5),
                    Text(dropLocation),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(Icons.star, size: 16, color: Colors.amber),
                  Text(rating.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              _buildStatusAndRebook(status),
            ],
          )
        ],
      ),
    ),
  );
}

// Status and Rebook button widget with updated styles
Widget _buildStatusAndRebook(String status) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
          color: status == 'Cancelled'
              ? Colors.red.withOpacity(0.1)
              : status == 'Upcoming'
                  ? Colors.blue.withOpacity(0.1)
                  : Colors.green.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              status == 'Cancelled'
                  ? Icons.cancel
                  : status == 'Upcoming'
                      ? Icons.hourglass_top
                      : Icons.check_circle,
              color: status == 'Cancelled'
                  ? Colors.red
                  : status == 'Upcoming'
                      ? Colors.blue
                      : Colors.green,
              size: 14,
            ),
            SizedBox(width: 4),
            Text(status,
                style: TextStyle(
                    color: status == 'Cancelled'
                        ? Colors.red
                        : status == 'Upcoming'
                            ? Colors.blue
                            : Colors.green)),
          ],
        ),
      ),
      SizedBox(height: 8), // Slightly reduce the spacing
      ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.refresh, size: 18, color: Colors.black), // Smaller icon size
            SizedBox(width: 4),
            Text(
              'Re-book',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17, // Smaller font size
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Button background color
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ],
  );
}
