// import 'package:flutter/material.dart';

// void main() {
//   runApp(HomeScreen());
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Row(
//           children: [
//             Text(
//               'WELCOME',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//             Icon(Icons.radio_button_checked, color: Colors.yellow),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20),
//             Column(
//               children: [
//                 // The card
//                 Card(
//                   elevation: 4,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Container(
//                     width: 370, // Reduced width
//                     height: 270, // Reduced height
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.circular(16), // Reduced border radius
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0), // Reduced padding
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset(
//                             'assets/images/chachacabspng.png', // Path to your image
//                             width: 280, // Reduced width
//                             height: 50, // Reduced height
//                             fit: BoxFit.cover, // Adjust the fit as needed
//                           ),
//                           SizedBox(
//                               height:
//                                   50), // Reduced spacing between image and input fields
//                           const Row(
//                             children: [
//                               Icon(Icons.location_on,
//                                   color: Colors.black,
//                                   size: 20), // Reduced icon size
//                               SizedBox(
//                                   width:
//                                       8), // Reduced space between icon and text field
//                               Expanded(
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Choose Pickup',
//                                     hintStyle: TextStyle(
//                                       fontSize: 15, // Reduced font size
//                                       color: Colors.grey,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     border: InputBorder.none,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                   width:
//                                       8), // Reduced space between text field and icon
//                               // Icon(Icons.my_location,
//                               //     color: Colors.grey,
//                               //     size: 20), // Reduced icon size
//                             ],
//                           ),
//                           SizedBox(height: 16), // Reduced space between rows
//                           const Row(
//                             children: [
//                               Icon(Icons.location_on,
//                                   color: Colors.yellow,
//                                   size: 20), // Reduced icon size
//                               SizedBox(
//                                   width:
//                                       8), // Reduced space between icon and text field
//                               Expanded(
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Choose Destination',
//                                     hintStyle: TextStyle(
//                                       fontSize: 15, // Reduced font size
//                                       color: Colors.grey,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     border: InputBorder.none,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 6), // Space between card and button
//                 // Neuromorphic button
//                 Container(
//                   width: 370,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.yellow[600],
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade600,
//                         offset: Offset(4, 4),
//                         blurRadius: 15,
//                         spreadRadius: 1,
//                       ),
//                       BoxShadow(
//                         color: Colors.white,
//                         offset: Offset(-4, -4),
//                         blurRadius: 15,
//                         spreadRadius: 1,
//                       ),
//                     ],
//                   ),
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.transparent,
//                       shadowColor: Colors.transparent,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 80, vertical: 15),
//                     ),
//                     child: Text(
//                       'BOOK',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Saved Location',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SavedLocationCard(
//                   label: 'Home',
//                   address: '2689 Joseph Street, Andover.',
//                 ),
//                 SavedLocationCard(
//                   label: 'Office',
//                   address: '2689 Joseph Street, Andover.',
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Recent Visits',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             RecentVisitTile(
//               address: '3276 Ridenour Street, Paradise Kansas, 67658',
//             ),
//             RecentVisitTile(
//               address: '3276 Ridenour Street, Paradise Kansas, 67658',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SavedLocationCard extends StatelessWidget {
//   final String label;
//   final String address;

//   SavedLocationCard({required this.label, required this.address});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.grey[300],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       width: MediaQuery.of(context).size.width * 0.4,
//       child: Column(
//         children: [
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             address,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class RecentVisitTile extends StatelessWidget {
//   final String address;

//   RecentVisitTile({required this.address});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Text(
//         address,
//         style: TextStyle(
//           fontSize: 14,
//           color: Colors.black,
//         ),
//       ),
//     );
//   }
// }

//slightly reduced the size of card and text
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(Icons.radio_button_checked, color: Colors.yellow),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Column(
                children: [
                  // The card
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 370, // Reduced width
                      height: 270, // Reduced height
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(16), // Reduced border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0), // Reduced padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/chachacabspng.png', // Path to your image
                              width: 280, // Reduced width
                              height: 50, // Reduced height
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                            SizedBox(
                                height:
                                    50), // Reduced spacing between image and input fields
                            const Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Colors.black,
                                    size: 20), // Reduced icon size
                                SizedBox(
                                    width:
                                        8), // Reduced space between icon and text field
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Choose Pickup',
                                      hintStyle: TextStyle(
                                        fontSize: 15, // Reduced font size
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        8), // Reduced space between text field and icon
                                // Icon(Icons.my_location,
                                //     color: Colors.grey,
                                //     size: 20), // Reduced icon size
                              ],
                            ),
                            SizedBox(height: 16), // Reduced space between rows
                            const Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Colors.yellow,
                                    size: 20), // Reduced icon size
                                SizedBox(
                                    width:
                                        8), // Reduced space between icon and text field
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Choose Destination',
                                      hintStyle: TextStyle(
                                        fontSize: 15, // Reduced font size
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 6), // Space between card and button
                  // Neuromorphic button
                  Container(
                    width: 370,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          offset: Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      ),
                      child: Text(
                        'BOOK',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Saved Location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SavedLocationCard(
                    label: 'Home',
                    address: '2689 Joseph Street, Andover.',
                  ),
                  SavedLocationCard(
                    label: 'Office',
                    address: '2689 Joseph Street, Andover.',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Recent Visits',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              RecentVisitTile(
                address: '3276 Ridenour Street, Paradise Kansas, 67658',
              ),
              RecentVisitTile(
                address: '3276 Ridenour Street, Paradise Kansas, 67658',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SavedLocationCard extends StatelessWidget {
  final String label;
  final String address;

  SavedLocationCard({required this.label, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            address,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentVisitTile extends StatelessWidget {
  final String address;

  RecentVisitTile({required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        address,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
