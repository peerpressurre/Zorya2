import 'package:flutter/material.dart';
import 'package:zorya_2/presentation/screens/home.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF131721),
      child: Column(children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
        ),
        // const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage('assets/logos/white_logo_long.jpeg'),
                )
                // Image.asset(
                //   'assets/logos/white_logo_long.jpeg',
                // ),
                )
          ],
        ),
      ]),
    );
  }
}
