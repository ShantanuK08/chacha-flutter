import 'package:flutter/material.dart';
import 'package:rider_app/screens/Profile/pofile_help.dart';
import 'package:rider_app/screens/profile_screen.dart';

// TermsConditionsPage class
class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Terms & Conditions',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1. General Terms\n'
                      'By using our cab management services, you agree to comply with and be bound by the following terms and conditions. Please read these carefully before using our service.\n\n'
                      '2. Eligibility\n'
                      'To use our services, you must be at least 18 years old. By using our services, you represent and warrant that you meet this eligibility requirement.\n\n'
                      '3. User Responsibilities\n'
                      'You agree to:\n'
                      '- Provide accurate and complete information during registration.\n'
                      '- Keep your account details secure and notify us of any unauthorized access.\n'
                      '- Abide by all applicable local, state, and federal laws while using our service.\n\n'
                      '4. Payment Terms\n'
                      'All payments for services must be made via the app\'s integrated payment system. No cash payments are accepted.\n\n'
                      '5. Cancellation Policy\n'
                      'Cancellations made within 5 minutes of booking are free of charge. After 5 minutes, a cancellation fee may apply.\n\n'
                      '6. Limitation of Liability\n'
                      'We are not liable for any indirect, incidental, or consequential damages arising from the use of our services.\n\n'
                      '7. Changes to Terms\n'
                      'We reserve the right to modify these terms at any time. Changes will be communicated via the app or email.\n\n'
                      '8. Governing Law\n'
                      'These terms are governed by the laws of the country where the service is provided.\n\n'
                      '9. Contact Us\n'
                      'For any questions or concerns regarding these terms, please contact our support team.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            // Button to navigate to ProfilePage
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProfileHome()), // Navigate to ProfilePage
                    );
                  },
                  child: const Text('Go to Profile Page'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
