import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/registration/regscreen.jpg'),
              fit: BoxFit.fill,
            )),
            //     child: Image.asset(
            //   'assets/registration/regscreen.jpg',
            // )
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5)),
        ),
        Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 270,
                  height: 270,
                  child: Image.asset(
                    'assets/white_logo.png',
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 340, //change to percentage
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      borderRadius: const BorderRadius.all(Radius.circular(7))),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
