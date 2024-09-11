import 'package:flutter/material.dart';

// Main function to run the app
Future<void> main() async => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const SecurityPrivacyPage(), // Home page set to SecurityPrivacyPage
    );
  }
}

// SecurityPrivacyPage class
class SecurityPrivacyPage extends StatelessWidget {
  const SecurityPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security & Privacy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Security options
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Old Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email ID',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone No.',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              // Privacy button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrivacyPage()),
                  );
                },
                child: const Text('Privacy Policy'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// PrivacyPage class
class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                '1. Data Collection\n'
                'We collect the following types of personal information to provide and improve our services:\n'
                '- User Information: Name, email address, phone number, profile picture, and payment details.\n'
                '- Location Data: Real-time location data, trip history, and pick-up/drop-off points for optimal service.\n'
                '- Device Information: Information such as device ID, model, operating system, and app usage patterns to ensure app functionality.\n'
                '- Usage Data: Interaction with the app, including pages visited, buttons clicked, and trip details.\n\n'
                '2. Use of Personal Information\n'
                'We use your personal information to:\n'
                '- Provide Cab Services: Match you with nearby drivers, manage bookings, and facilitate payments.\n'
                '- Ensure Safety and Security: Use location data to monitor trips and ensure the safety of both drivers and riders.\n'
                '- Customer Support: Access your information to resolve any issues or complaints that may arise.\n'
                '- Improve Services: Analyze usage patterns to enhance features and improve the user experience.\n'
                '- Communications: Send you updates, service announcements, and promotional content, but only if you opt in.\n\n'
                '3. Data Sharing\n'
                'We share your information with third parties only in the following circumstances:\n'
                '- Drivers: To connect you with drivers and provide relevant trip details.\n'
                '- Payment Processors: To process payment transactions securely.\n'
                '- Law Enforcement: If required by law, we may share data with law enforcement or regulatory authorities.\n'
                '- Third-Party Service Providers: Companies that assist with app performance, analytics, and marketing.\n\n'
                '4. Data Security\n'
                'We implement robust security measures to protect your data:\n'
                '- Encryption: All sensitive data, such as payment details and personal information, is encrypted in transit and at rest.\n'
                '- Access Control: Only authorized personnel have access to sensitive data for legitimate purposes.\n'
                '- Security Monitoring: We regularly monitor for potential security threats and vulnerabilities in our system.\n\n'
                '5. Data Retention\n'
                'We retain your personal data for as long as necessary to provide the services or comply with legal obligations:\n'
                '- Trip Information: Kept for a limited time to resolve disputes or provide trip history.\n'
                '- Account Information: Stored for the duration of your use of the service, or until you request its deletion.\n\n'
                '6. User Rights\n'
                'You have certain rights regarding your personal data:\n'
                '- Access: You can request a copy of the personal data we have collected about you.\n'
                '- Correction: You can request corrections to any inaccurate or outdated information.\n'
                '- Deletion: You can request the deletion of your personal data, though some data may be retained for legal purposes.\n'
                '- Opt-out: You can opt out of marketing communications at any time.\n\n'
                '7. Cookies and Tracking\n'
                'We use cookies and similar technologies to:\n'
                '- Enhance User Experience: Store user preferences and improve navigation through the app.\n'
                '- Analytics: Monitor usage patterns and understand app performance.\n\n'
                '8. Location Data\n'
                'Your real-time location is collected to:\n'
                '- Provide accurate pick-up and drop-off locations.\n'
                '- Optimize driver routes and match you with the closest driver.\n'
                '- Ensure your safety during the trip.\n'
                'You may disable location sharing at any time, but this will limit the functionality of the app.\n\n'
                '9. Changes to Privacy Policy\n'
                'We may update this Privacy Policy periodically. When changes are made, we will notify you through the app or via email.\n\n'
                '10. Contact Us\n'
                'If you have any questions or concerns regarding our privacy practices, please contact us at:\n'
                '- Email: support@cabcabservice.com\n'
                '- Phone: +1-800-123-4567',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
