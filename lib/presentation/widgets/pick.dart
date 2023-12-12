// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
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
  double q1_opacity = 0.5;
  double q1_s1_opacity = 0.0;
  double q1_s2_opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF322721),
        body: Stack(children: [
      ListView(scrollDirection: Axis.horizontal, children: [
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
                    q1_s1_opacity = q1_s1_opacity == 0.0 ? 0.8 : 0.0;
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
                    q1_s2_opacity = q1_s2_opacity == 0.0 ? 0.8 : 0.0;
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
                          image: AssetImage('assets/home/q1-s2.png'),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    color: const Color(0xFF322721), height: double.infinity, width: 30)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    color: const Color(0xFF322721), height: double.infinity, width: 30)
              ],
            )
    ]));
  }
}
