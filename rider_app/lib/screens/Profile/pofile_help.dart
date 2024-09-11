// import 'package:flutter/material.dart';
// // Import the ProfileHome page
// import 'profile_home.dart'; // Ensure this path is correct.

// void main() {
//   runApp(const App());
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         primarySwatch: Colors.blue,
//         textTheme: const TextTheme(
//           bodyMedium: TextStyle(fontSize: 16),
//           titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//       home: const HelpPage(),
//     );
//   }
// }

// class HelpPage extends StatelessWidget {
//   const HelpPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Help'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             // Navigate to ProfileHome page on back button press
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const ProfileHome()),
//             );
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Card(
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 children: [
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(12),
//                       topRight: Radius.circular(12),
//                     ),
//                     child: Image.asset(
//                       'assets/images/onlinesupport_3.jpg',
//                       height: 200,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Need Help?',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'Find answers to your questions or contact support for more help.',
//                         ),
//                         const SizedBox(height: 20),
//                         ElevatedButton.icon(
//                           onPressed: () {},
//                           icon: const Icon(Icons.phone),
//                           label: const Text('Contact Support'),
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(vertical: 16),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView(
//                 children: [
//                   HelpItem(
//                     icon: Icons.support_agent,
//                     title: 'Assistance with Booking',
//                     description:
//                         'Need assistance with your booking? Our support team is available 24/7 to help with any issues or questions you may have.',
//                   ),
//                   HelpItem(
//                     icon: Icons.directions_car,
//                     title: 'Track Your Ride',
//                     description:
//                         'Track your ride in real time through the app and contact your driver directly for updates or changes.',
//                   ),
//                   HelpItem(
//                     icon: Icons.monetization_on,
//                     title: 'Fare Estimates',
//                     description:
//                         'For fare estimates and route details, simply input your destination and the app will provide all the information you need.',
//                   ),
//                   HelpItem(
//                     icon: Icons.info,
//                     title: 'General Information',
//                     description:
//                         'Find more information about our services and policies.',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HelpItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String description;

//   const HelpItem({
//     Key? key,
//     required this.icon,
//     required this.title,
//     required this.description,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: ListTile(
//         leading: Icon(icon, color: Theme.of(context).primaryColor),
//         title: Text(
//           title,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(description),
//         trailing: const Icon(Icons.arrow_forward_ios),
//         onTap: () {
//           // Handle item tap, e.g., navigate to a detailed help page
//         },
//       ),
//     );
//   }
// }

// // Ensure the ProfileHome widget exists in profile_home.dart
// class ProfileHome extends StatelessWidget {
//   const ProfileHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile Home'),
//       ),
//       body: const Center(
//         child: Text('Welcome to the Profile Home Page'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// Import the ProfileHome page
import 'profile_home.dart'; // Ensure this path is correct.

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      home: const ProfileHome(), // Set the initial page to ProfileHome
    );
  }
}

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Pop the current page and return to the previous one
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/images/onlinesupport_3.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Need Help?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Find answers to your questions or contact support for more help.',
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.phone),
                          label: const Text('Contact Support'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  HelpItem(
                    icon: Icons.support_agent,
                    title: 'Assistance with Booking',
                    description:
                        'Need assistance with your booking? Our support team is available 24/7 to help with any issues or questions you may have.',
                  ),
                  HelpItem(
                    icon: Icons.directions_car,
                    title: 'Track Your Ride',
                    description:
                        'Track your ride in real time through the app and contact your driver directly for updates or changes.',
                  ),
                  HelpItem(
                    icon: Icons.monetization_on,
                    title: 'Fare Estimates',
                    description:
                        'For fare estimates and route details, simply input your destination and the app will provide all the information you need.',
                  ),
                  HelpItem(
                    icon: Icons.info,
                    title: 'General Information',
                    description:
                        'Find more information about our services and policies.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HelpItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HelpItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Handle item tap, e.g., navigate to a detailed help page
        },
      ),
    );
  }
}

// Ensure the ProfileHome widget exists in profile_home.dart
class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Home'),
      ),
      body: const Center(
        child: Text('Welcome to the Profile Home Page'),
      ),
    );
  }
}
