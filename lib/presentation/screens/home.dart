import 'package:flutter/material.dart';
import 'package:zorya_2/presentation/screens/more_screen.dart';
import 'package:zorya_2/presentation/screens/registration.dart';
import 'package:zorya_2/presentation/widgets/about_us.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'dart:developer';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:zorya_2/presentation/widgets/test.dart';

class Bnb extends StatefulWidget {
   Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
      final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
     AboutUs(),
     Home(),
     AboutUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Color(0xFF322721),
              // const Color(0xFF131721),
              showLabel: false,
              notchColor:  const Color(0xFFE0B76F),

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: MediaQuery.of(context).size.width * 1,
              durationInMilliSeconds: 300,
              bottomBarItems: const [
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color:
                      Color(0xFFE0B76F),
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: 
                    Color(0xFF322721),
                    //  Color(0xFF131721),
                  ),
                  // itemLabel: 'Page 1',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color:
                    Color(0xFFE0B76F),
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: 
                    Color(0xFF322721),
                    // Color(0xFF131721),
                  ),
                  // itemLabel: 'Page 2',
                ),
                  BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: 
                     Color(0xFFE0B76F),
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: 
                    Color(0xFF322721),
                    // Color(0xFF131721),
                  ),
                  // itemLabel: 'Page 2',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
          );
  }
}
