// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:zorya_2/presentation/screens/more_screen.dart';
import 'package:zorya_2/presentation/screens/registration.dart';
import 'package:zorya_2/presentation/widgets/about_us.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'dart:developer';

class Pick extends StatefulWidget {
  Pick({super.key});

  @override
  State<Pick> createState() => _PickState();
}

class _PickState extends State<Pick> {
   late ScrollController _scrollController;


  int switcherIndex1 = 0;

  double q1_opacity = 0.4;
  double q1_s1_opacity = 0.0;
  double q1_s2_opacity = 0.0;
  double s1_f0_opacity = 0.0;
  double s2_f0_opacity = 0.0;
  double s1_f1_opacity = 0.0;
  double s1_f2_opacity = 0.0;
  double s1_f3_opacity = 0.0;
  double s1_f4_opacity = 0.0;
  double s1_f5_opacity = 0.0;
  double s1_f6_opacity = 0.0;
  double s1_f7_opacity = 0.0;
  double s1_f8_opacity = 0.0;
  double s1_f9_opacity = 0.0;
  int s1_counter = 0;
  int s2_counter = 0;

  // ScrollController _scrollController = ScrollController();
  void s1_levels(bool x) {
    if(x == true) {
      s1_f0_opacity = 0.5;
      s2_f0_opacity = 0.5;
      s1_f1_opacity = 0.5;
      s1_f2_opacity = 0.5;
      s1_f3_opacity = 0.5;
      s1_f4_opacity = 0.5;
      s1_f5_opacity = 0.5;
      s1_f6_opacity = 0.5;
      s1_f7_opacity = 0.5;
      s1_f8_opacity = 0.5;
      s1_f9_opacity = 0.5;
      q1_opacity = 0.0;
      q1_s2_opacity = 0.0;
    }
    else{
      s1_f0_opacity = 0.0;
      s2_f0_opacity = 0.0;
      s1_f1_opacity = 0.0;
      s1_f2_opacity = 0.0;
      s1_f3_opacity = 0.0;
      s1_f4_opacity = 0.0;
      s1_f5_opacity = 0.0;
      s1_f6_opacity = 0.0;
      s1_f7_opacity = 0.0;
      s1_f8_opacity = 0.0;
      s1_f9_opacity = 0.0;
      // q1_opacity = 0.0;
      // q1_s2_opacity = 0.0;
    }
  }
  bool isLevel = true;

  @override
  void initState() {
    super.initState();

    // Initialize ScrollController with an initial scroll position of 200
    _scrollController = ScrollController(initialScrollOffset: 35);

       _scrollController.addListener(() {
      setState(() {
        // Update the switcher index based on the scroll position
        if (_scrollController.position.pixels < 266) {
          switcherIndex1 = 0;
        } else {
          () {
          switcherIndex1 = 1;
        };
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // const Color(0xFF322721),
        body: Stack(children: [
      ListView(scrollDirection: Axis.horizontal,
      controller: _scrollController,
       children: [
        Stack(
          children: [
            Container(
              height: 510, 
              // MediaQuery.of(context).size.height * 0.7,
              margin: const EdgeInsets.only(
                  top: 51),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                width: 800,
                // MediaQuery.of(context).size.width * 2.23,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home/home_back.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 410,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 67,
                  right: 30,
                  top: 101),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // setState(() {
                  //   q1_opacity = q1_opacity == 0.0 ? 1.0 : 0.0;
                  // });
                },
                child: Opacity(
                    opacity: q1_opacity,
                    child: Container(
                      width: 665,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/home/q1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              height: 412,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 67,
                  right: 30,
                  top: 99),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    q1_s1_opacity = q1_s1_opacity == 0.0 ? 0.5 : 0.0;
                    // q1_opacity = 0;
                    q1_s2_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: q1_s1_opacity,
                    child: Container(
                      width: 266,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/home/q1-s1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 405,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 333,
                  right: 30,
                  top: 101),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    q1_s2_opacity = q1_s2_opacity == 0.0 ? 0.5 : 0.0;
                    // q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: q1_s2_opacity,
                    child: Container(
                      width: 398,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/q1-s2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 61,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 420),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(isLevel);
                    isLevel = isLevel == true? false : true;
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f0.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 51,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 398),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              height: 46,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 372),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 39,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 347),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              height: 35,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 321),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 35,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 290),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f5.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              height: 43,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 257),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f6.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Container(
              height: 44,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 69,
                  right: 30,
                  top: 228),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s1_f0_opacity,
                    child: Container(
                      width: 268,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s1-f7.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
             Transform.rotate(
              angle: 0.01,
               child: Container(
                height: 56,
                // MediaQuery.of(context).size.height * 0.55,
                margin: const EdgeInsets.only(
                    left: 69,
                    right: 30,
                    top: 195),
                    // MediaQuery.of(context).size.height * 0.137),
                child: GestureDetector(
                  onTap: () {
                    // Toggle the opacity on tap
                    setState(() {
                      s1_levels(true);
                      q1_opacity = 0;
                      q1_s1_opacity = 0.0;
                    });
                  },
                  child: Opacity(
                      opacity: s1_f0_opacity,
                      child: Container(
                        width: 268,
                        // MediaQuery.of(context).size.width * 1.87,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/home/s1-f8.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
                           ),
             ),
            Transform.rotate(
              angle: -0.012,
              child: Container(
                // transform: Matrix4.rotationZ(-0.05),
                height: 60,
                // MediaQuery.of(context).size.height * 0.55,
                margin: const EdgeInsets.only(
                    left: 67,
                    right: 30,
                    top: 161),
                    // MediaQuery.of(context).size.height * 0.137),
                child: GestureDetector(
                  onTap: () {
                    // Toggle the opacity on tap
                    setState(() {
                      s1_levels(true);
                      q1_opacity = 0;
                      q1_s1_opacity = 0.0;
                    });
                  },
                  child: Opacity(
                      opacity: s1_f0_opacity,
                      child: Container(
                        width: 269,
                        // MediaQuery.of(context).size.width * 1.87,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/home/s1-f9.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
              ),
            ),
             Container(
              height: 67,
              // MediaQuery.of(context).size.height * 0.55,
              margin: const EdgeInsets.only(
                  left: 337,
                  right: 30,
                  top: 441),
                  // MediaQuery.of(context).size.height * 0.137),
              child: GestureDetector(
                onTap: () {
                  // Toggle the opacity on tap
                  setState(() {
                    s1_levels(true);
                    q1_opacity = 0;
                    q1_s1_opacity = 0.0;
                  });
                },
                child: Opacity(
                    opacity: s2_f0_opacity,
                    child: Container(
                      width: 392,
                      // MediaQuery.of(context).size.width * 1.87,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home/s2-f0.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        )
      ]),
        Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                          SlideSwitcher(
                    onSelect: (index) {
                      setState(() {
                        switcherIndex1 = index;
                        if (switcherIndex1 == 0) {
                          _scrollController.animateTo(
                            0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else if (switcherIndex1 == 1) {
                          _scrollController.animateTo(
                            266,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                        if (_scrollController.position.pixels < 266) {
                          switcherIndex1 = 0;
                        } else {
                          switcherIndex1 = 1;
                        }
                      });
                    },
                    containerHeight: 40,
                    containerWight: 180,
                    containerColor: Colors.black87.withOpacity(0.5),
                    slidersColors: [
                      const Color(0xFFFBCD72).withOpacity(0.9),
                    ],
                    children: [
                      Text(
                        'Сектор 1',
                        style: TextStyle(
                            color: switcherIndex1 == 0
                                ? Colors.black87
                                : Colors.white),
                      ),
                      Text(
                        'Сектор 2',
                        style: TextStyle(
                            color: switcherIndex1 == 1
                                ? Colors.black87
                                : Colors.white),
                      ),
                    ],
                    
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        // Positioned(
        //     bottom: 0,
        //     left: 0,
        //     right: 0,
        //     child: LineSwitch(
        //       scrollController: _scrollController,
        //     ),
        //   ),
       Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    color: Colors.white,
                    //  const Color(0xFF322721),
                      height: double.infinity, width: 30)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    color: Colors.white,
                    // const Color(0xFF322721),
                     height: double.infinity, width: 30)
              ],
            )
    ]));
  }
}


class LineSwitch extends StatelessWidget {
  final ScrollController scrollController;

  LineSwitch({required this.scrollController});

  @override
  Widget build(BuildContext context) {
     double switchPosition = 0.0;
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          // Update the position of the switch based on the scroll offset
          double switchPosition = (notification.metrics.pixels /
                  notification.metrics.maxScrollExtent) *
              MediaQuery.of(context).size.width;

          // Ensure that the switch stays within the bounds of the screen
          switchPosition = switchPosition.clamp(0.0, MediaQuery.of(context).size.width);

          // Update the UI
          if (context != null) {
            Scaffold.of(context).setState(() {});
          }
        }
        return true;
      },
      child: Container(
        height: 5, // Set the height of your horizontal line switch
        color: Colors.blue, // Set the color of your horizontal line switch
        margin: EdgeInsets.only(left: switchPosition), 
        // Add any additional styling here
        // ...
      ),
    );
  }
}