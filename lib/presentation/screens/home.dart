import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/registration.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          // Container(
          //   decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5)),
          // ),
          Column(
            children: [
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      'assets/white_logo.png',
                    ),
                  )
                ],
              ),
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
    ])
    );
  }
}