import 'package:flutter/material.dart';

class SafetyScreen extends StatelessWidget {
  const SafetyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Use pop to go back to the previous screen
          },
        ),
        title: const Text('Safety'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Image
            Container(
              width: 200,
              height: 150,
              child: Image.asset('assets/images/image 36.jpg'),
            ),
            const SizedBox(height: 16),

            // Description Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Every ride is secure and reliable. Travel with peace of mind in our well-maintained, GPS-tracked vehicles.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),

            // Features List
            Expanded(
              child: ListView(
                children: [
                  featureItem(
                      "Screening: Drivers pass thorough background checks."),
                  featureItem(
                      "Inspection: Vehicles receive regular safety inspections."),
                  featureItem(
                      "Training: Drivers are trained in safety and service."),
                  featureItem(
                      "Monitoring: GPS and cameras ensure passenger safety."),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Bottom Image (Driver)
            Container(
              width: 120,
              height: 150,
              child: Image.asset('assets/images/chacha.jpg'),
            ),
          ],
        ),
      ),
    );
  }

  static Widget featureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.green),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
