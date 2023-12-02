import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorya_2/presentation/screens/home.dart';
import 'package:zorya_2/presentation/screens/more_screen.dart';
import 'package:zorya_2/presentation/widgets/test.dart';




class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String abtusHeadline =
      "Забудовник “Особняк Центр”-\nце провідна інвестиційно-\nдевелоперська \nкомпанія із 17-\nрічним досвідом, яка \nспеціалізується на \nоб’єктах житлової \nта комерційної \nнерухомості.";

  //  String abtusHeadline =
      // "Забудовник “Особняк Центр”-це провідна інвестиційно-девелоперська компанія із 17-річним досвідом, яка спеціалізується на об’єктах житлової та комерційної нерухомості.";

  String abtus1 =
      "Філософія компанії — впровадження \nінноваційних рішень та технологій для \nстворення сучасного житла, яке \nвідповідає стандартам якості.\n\nКоманда “Особняк Центр”- це \nексперти галузі, які мають ефективний \nдосвід та \nвеликий портфель успішно \nреалізованих проектів, розумінням \nактуальних \nта майбутніх потреб ринку.";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 5, left: 17, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const More()),
                    );
                  },
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Color(0xFF322721),
                    size: 30,
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
              bottom: MediaQuery.of(context).size.height * 0.03,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Image(
                      image: AssetImage('assets/logos/brown_logo.jpeg'),
                    ))
              ],
            ),
          ),
         
          Container(
              color: const Color(0xFF322721),
              height: 240,
              child: Stack(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            // height: 150,
                            child: Image(
                              image: AssetImage(
                                  'assets/logos/osbb_white_logo.png'),
                            ),
                          ),
                        ],
                      ),
                      // Container(color: const Color(0xFF322721).withOpacity(0.5))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Наша історія',
                            style: GoogleFonts.manrope(
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: 0.5),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()),
                              );
                            },
                            child: Text(
                              'Home',
                              style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          Text(
                            ' / Наша історія',
                            style: GoogleFonts.manrope(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: 0.5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.,
          //   children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40, bottom: 30),
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    abtusHeadline,
                    style: GoogleFonts.manrope(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        letterSpacing: 0.2),
                  ),
                )
              ],
            ),
          ),
          // FractionallySizedBox(
          //   widthFactor: 0.8, // 80% of the available width
          //   heightFactor: 0.1,
            // child: 
            Container(
              color: Colors.black87,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.001,
            ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    abtus1,
                    style: GoogleFonts.manrope(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87,
                        letterSpacing: 0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 40),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30.0), // Adjust the value for oval shape
                    ),
                    backgroundColor: Colors.white, // Background color
                    side:
                        const BorderSide(color: Color(0xFF161D2D), width: 2.0),
                    fixedSize: const Size.fromHeight(40),
                    // Border color
                  ),
                  child: Text(
                    "Сайт забудовника",
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF161D2D),
                        letterSpacing: 0),
                  ),
                )
              ],
            ),
          ),
          Container(
              color: const Color(0xFF161D2D),
              height: 596,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Наші збудовані об'єкти",
                        style: GoogleFonts.manrope(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0),
                      ),
                    ],
                  ),
                ),
              ])),
          Container(
              color: const Color(0xFFE8EBF2),
              height: 368,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 7, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Будинок на Поділлі',
                            style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF707479),
                                letterSpacing: 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'ЖК Садовий',
                            style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF707479),
                                letterSpacing: 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'ЖК Східна Перлина',
                            style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF707479),
                                letterSpacing: 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Будинок на Стрілецькій',
                            style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF707479),
                                letterSpacing: 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            color: const Color(0xFFF1F3F4),
            height: 450,
            child: Text('тут карта буде'),
          ),
          Container(
            color: const Color(0xFFF5F6FA),
            height: 460,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 58),
              child: Column(children: [
                Row(children: [
                  Text(
                    "Запитуйте",
                    style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF161D2D),
                        height: 1),
                  ),
                ]),
                Row(
                  children: [
                    Text(
                      "Наші фахівці з радістю дадуть відповідь на всі \nваші запитання та підберуть найкращі \nпропозиції для будь-яких потреб, як для \nпроживання так і для інвестицій.",
                      style: GoogleFonts.manrope(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF707479),
                          height: 2),
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      )
      ),
    );
  }
}
