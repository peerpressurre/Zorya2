import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorya_2/presentation/widgets/pick.dart';
import 'package:magic_text/magic_text.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  // String abtusHeadline =
  //     "Забудовник “Особняк Центр”-\nце провідна інвестиційно-\nдевелоперська \nкомпанія із 17-\nрічним досвідом, яка \nспеціалізується на \nоб’єктах житлової \nта комерційної \nнерухомості.";

  MagicText abtusHeadline = MagicText(
    "Забудовник “Особняк Центр”-\nце провідна інвестиційно-\nдевелоперська \nкомпанія із 17-\nрічним досвідом, яка \nспеціалізується на \nоб’єктах житлової \nта комерційної \nнерухомості.",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    maxLines: 1,
    minFontSize: 10,
    maxFontSize: 40,
    textStyle: GoogleFonts.manrope(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
        letterSpacing: 0.2),
  );

  MagicText abtus1 = MagicText(
      "Філософія компанії — впровадження \nінноваційних рішень та технологій для \nстворення сучасного житла, яке \nвідповідає стандартам якості.\n\nКоманда “Особняк Центр”- це \nексперти галузі, які мають ефективний \nдосвід та \nвеликий портфель успішно \nреалізованих проектів, розумінням \nактуальних та \nмайбутніх потреб ринку.",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 20,
      maxFontSize: 35,
      textStyle: GoogleFonts.manrope(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black87,
          letterSpacing: 0));
  // String abtus1 =
  // "Філософія компанії — впровадження інноваційних рішень та технологій для \nстворення сучасного житла, яке відповідає стандартам якості.\n\nКоманда “Особняк Центр”- це експерти галузі, які мають ефективний досвід та \nвеликий портфель успішно реалізованих проектів, розумінням актуальних та \nмайбутніх потреб ринку.";

  MagicText sitebutton = MagicText(
    "Сайт забудовника",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    minFontSize: 7,
    maxFontSize: 20,
    textStyle: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF161D2D),
    ),
  );

  MagicText ourbuildings = MagicText(
    "Наші збудовані об'єкти",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: false,
    minFontSize: 15,
    maxFontSize: 35,
    textStyle: GoogleFonts.manrope(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                const Column(
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
                            image:
                                AssetImage('assets/logos/osbb_white_logo.png'),
                          ),
                        ),
                      ],
                    ),
                    // Container(color: const Color(0xFF322721).withOpacity(0.5))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.020),
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
                                MaterialPageRoute(builder: (context) => Pick()),
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
            padding:
                const EdgeInsets.only(left: 30, top: 40, bottom: 30, right: 30),
            child: FittedBox(fit: BoxFit.contain, child: abtusHeadline),
          ),
          Container(
            color: Colors.black87,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 33, top: 20, right: 30),
            child: FittedBox(fit: BoxFit.contain, child: abtus1),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5 > 300
                      ? 300
                      : MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.07 > 60
                      ? 60
                      : MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Adjust the value for oval shape
                      ),
                      backgroundColor: Colors.white, // Background color
                      side: const BorderSide(
                          color: Color(0xFF161D2D), width: 2.0),
                      // fixedSize: const Size.fromHeight(60),
                      // Border color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: sitebutton,
                    ),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                color: const Color(0xFF161D2D),
                height: 596,
                 width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.08, 
                    right: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1),
                  child: ourbuildings,
                )),
          ),
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
      )),
    );
  }
}
