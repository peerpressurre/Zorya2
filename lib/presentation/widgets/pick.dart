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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/pick/orig_pick.jpg'),
            fit: BoxFit.fill,
          )),
          //     child: Image.asset(
          //   'assets/registration/regscreen.jpg',
          // )
        ),
      ),
      // Container(
      //   decoration: BoxDecoration(
      //       color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5)),
      // ),
      Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const More()),
                    );
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Registration()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 35,
                  width: 190, // You might want to adjust the width
                  child: Center(
                    child: Text(
                      "Назад",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    ]));
  }
}
