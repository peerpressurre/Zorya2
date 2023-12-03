import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorya_2/presentation/widgets/about_us.dart';
import 'package:zorya_2/presentation/widgets/pick.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF131721),
      child: Column(children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Pick()),
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                // width: 130,
                height: 40,
                child: Image(
                  image: AssetImage('assets/logos/white_logo_long.jpeg'),
                )
                // Image.asset(
                //   'assets/logos/white_logo_long.jpeg',
                // ),
                )
          ],
        ),
        // const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Pick()),
                  );
                },
                child: Text(
                  'Головна',
                  style: GoogleFonts.notoSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Новий Житловий Комплекс',
                  style: GoogleFonts.notoSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Фотозвіт',
                  style: GoogleFonts.notoSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutUs()),
                  );
                },
                child: Text(
                  'Про Нас',
                  style: GoogleFonts.notoSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Зв\'язатись з нами ',
                  style: GoogleFonts.notoSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
