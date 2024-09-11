// //main working code with proper logic
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:iconly/iconly.dart';
// import 'package:rider_app/screens/Bottom_nav_dock/bottom_nav_btn.dart';
// import 'package:rider_app/screens/Bottom_nav_dock/size_config.dart';
// import 'package:rider_app/screens/Ride_history/ride_history.dart';
// import 'package:rider_app/screens/home_screen.dart';
// import 'package:rider_app/screens/services_pages/services_home.dart';

// class FinalView extends StatefulWidget {
//   const FinalView({super.key});

//   @override
//   FinalViewState createState() => FinalViewState();
// }

// class FinalViewState extends State<FinalView> {
//   int _currentIndex = 0;
//   final PageController pageController = PageController();

//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   }

//   @override
//   void dispose() {
//     pageController.dispose();
//     super.dispose();
//   }

//   void animateToPage(int page) {
//     pageController.animateToPage(
//       page,
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.decelerate,
//     );
//   }

//   void navigateToScreen(int index) {
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ServicePage()),
//         );
//         break;
//       // Add additional cases here for other pages if needed
//       case 2:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HistoryScreen()),
//         );
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     AppSizes().init(context);
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SafeArea(
//         bottom: false,
//         child: Stack(
//           children: [
//             Positioned.fill(
//               child: PageView(
//                 onPageChanged: (value) {
//                   setState(() {
//                     _currentIndex = value;
//                   });
//                 },
//                 controller: pageController,
//                 children: screens,
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               right: 0,
//               left: 0,
//               child: bottomNav(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget bottomNav() {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(
//         AppSizes.blockSizeHorizontal * 4.5,
//         0,
//         AppSizes.blockSizeHorizontal * 4.5,
//         20,
//       ),
//       child: Material(
//         borderRadius: BorderRadius.circular(30),
//         color: Colors.transparent,
//         elevation: 6,
//         child: Container(
//           height: AppSizes.blockSizeHorizontal * 18,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//             color: Colors.grey[900],
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 0,
//                 bottom: 0,
//                 left: AppSizes.blockSizeHorizontal * 3,
//                 right: AppSizes.blockSizeHorizontal * 3,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     BottomNavBTN(
//                       onPressed: (int val) {
//                         animateToPage(val);
//                         setState(() {
//                           _currentIndex = val;
//                         });
//                       },
//                       icon: IconlyLight.home,
//                       currentIndex: _currentIndex,
//                       index: 0,
//                     ),
//                     BottomNavBTN(
//                       onPressed: (int val) {
//                         animateToPage(val);
//                         setState(() {
//                           _currentIndex = val;
//                         });
//                       },
//                       icon: IconlyLight.category,
//                       currentIndex: _currentIndex,
//                       index: 1,
//                     ),
//                     BottomNavBTN(
//                       onPressed: (int val) {
//                         navigateToScreen(val);
//                       },
//                       icon: IconlyLight.document,
//                       currentIndex: _currentIndex,
//                       index: 2,
//                     ),
//                     BottomNavBTN(
//                       onPressed: (int val) {
//                         navigateToScreen(val);
//                       },
//                       icon: IconlyLight.profile,
//                       currentIndex: _currentIndex,
//                       index: 3,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   final List<Widget> screens = [
//     HomeScreen(),
//     ServicePage(),
//     HistoryScreen()
//     // Add additional pages here if needed
//     // AnotherPage(),
//   ];
// }



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:rider_app/screens/Bottom_nav_dock/bottom_nav_btn.dart';
import 'package:rider_app/screens/Bottom_nav_dock/size_config.dart';
import 'package:rider_app/screens/Profile/profile_home.dart';
import 'package:rider_app/screens/Ride_history/ride_history.dart';
import 'package:rider_app/screens/home_screen.dart';
import 'package:rider_app/screens/services_pages/services_home.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  FinalViewState createState() => FinalViewState();
}

class FinalViewState extends State<FinalView> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                children: [
                  HomeScreen(), // Page 1
                  ServicePage(), // Page 2
                  HistoryScreen(), // Page 3
                  ProfileHome(), // Page 4
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSizes.blockSizeHorizontal * 4.5,
        0,
        AppSizes.blockSizeHorizontal * 4.5,
        20,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        elevation: 6,
        child: Container(
          height: AppSizes.blockSizeHorizontal * 18,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomNavBTN(
                onPressed: (int val) {
                  animateToPage(val);
                },
                icon: IconlyLight.home,
                currentIndex: _currentIndex,
                index: 0,
              ),
              BottomNavBTN(
                onPressed: (int val) {
                  animateToPage(val);
                },
                icon: IconlyLight.category,
                currentIndex: _currentIndex,
                index: 1,
              ),
              BottomNavBTN(
                onPressed: (int val) {
                  animateToPage(val);
                },
                icon: IconlyLight.document,
                currentIndex: _currentIndex,
                index: 2,
              ),
              BottomNavBTN(
                onPressed: (int val) {
                  animateToPage(val);
                },
                icon: IconlyLight.profile,
                currentIndex: _currentIndex,
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
