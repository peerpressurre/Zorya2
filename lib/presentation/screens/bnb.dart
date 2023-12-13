
import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/scroll_navigation.dart';
import 'package:zorya_2/presentation/screens/registration.dart';
import 'package:zorya_2/presentation/widgets/about_us.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:zorya_2/presentation/widgets/pick.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Bnb extends StatelessWidget {
  const Bnb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ScrollNavigation(
        bodyStyle: const NavigationBodyStyle(
          background: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
        ),
        barStyle: NavigationBarStyle(
          position: NavigationPosition.bottom,
          background: Color(0xFF322721).withOpacity(1),
          activeColor: Colors.white,
          deactiveColor: Colors.white54,
          // Color(0xFF322721),
          elevation: 0.0,
        ),
        pages: [
          Pick(),
          const AboutUs(),
          const Registration(),
        ],
        items: const [
          ScrollNavigationItem(icon: Icon(Icons.home, size: 20),),
          ScrollNavigationItem(icon: Icon(Icons.phone_rounded)),
          ScrollNavigationItem(icon: Icon(Icons.person)),
        ],
        physics: true,
        initialPage: 0,
      ),
    );
  }
}


// class Bnb extends StatefulWidget {
//   @override
//   _BnbState createState() => _BnbState();
// }

// class _BnbState extends State<Bnb> {
//   int _currentIndex = 0;
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _getBodyWidget(_currentIndex),
//       bottomNavigationBar: BottomNavyBar(
//         selectedIndex: _currentIndex,
//         showElevation: true,
//         itemCornerRadius: 24,
//         curve: Curves.easeIn,
//         onItemSelected: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//             icon: const Icon(Icons.home),
//             title: const Text('Обрати'),
//             activeColor: const Color(0xFF322721),
//             textAlign: TextAlign.center,
//           ),
//           BottomNavyBarItem(
//             icon: const Icon(Icons.phone_rounded),
//             title: const Text('Зв\'язок'),
//             activeColor: const Color(0xFF322721),
//             textAlign: TextAlign.center,
//           ),
//            BottomNavyBarItem(
//             icon: const Icon(Icons.more_horiz_rounded),
//             title: const Text('Зв\'язок'),
//             activeColor: const Color(0xFF322721),
//             textAlign: TextAlign.center,
//           ),
//           // BottomNavyBarItem(
//           //   icon: const Icon(Icons.person),
//           //   title: const Text('Акаунт'),
//           //   activeColor: const Color(0xFF322721),
//           //   textAlign: TextAlign.center,
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _getBodyWidget(int index) {
//     switch (index) {
//       case 0:
//         return Pick();
//       case 1:
//         return const AboutUs();
//       case 2:
//         return const Registration();
//       default:
//         return Container();
//     }
//   }
// }

