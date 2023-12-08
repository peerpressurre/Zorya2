import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorya_2/presentation/widgets/pick.dart';
import 'package:magic_text/magic_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  // String abtusHeadline =
  //     "Забудовник “Особняк Центр”-\nце провідна інвестиційно-\nдевелоперська \nкомпанія із 17-\nрічним досвідом, яка \nспеціалізується на \nоб’єктах житлової \nта комерційної \nнерухомості.";

  String name = '';
  String phoneNumber = '';
  MagicText abtusHeadlinePhone = MagicText(
    "Забудовник “Особняк Центр”-\nце провідна інвестиційно-\nдевелоперська \nкомпанія із 17-\nрічним досвідом, яка \nспеціалізується на \nоб’єктах житлової \nта комерційної \nнерухомості.",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    minFontSize: 20,
    maxFontSize: 40,
    textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
        letterSpacing: 0.2),
  );

  MagicText abtusHeadlineLaptop = MagicText(
    "Забудовник “Особняк Центр” - це провідна інвестиційно-\nдевелоперська компанія із 17-річним досвідом, яка \nспеціалізується на об’єктах житлової та комерційної \nнерухомості.",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    minFontSize: 20,
    maxFontSize: 40,
    textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
        letterSpacing: 0.2),
  );

  MagicText abtus1phone = MagicText(
      "Філософія компанії — впровадження \nінноваційних рішень та технологій для \nстворення сучасного житла, яке \nвідповідає стандартам якості.\n\nКоманда “Особняк Центр”- це \nексперти галузі, які мають ефективний \nдосвід та \nвеликий портфель успішно \nреалізованих проектів, розумінням \nактуальних та \nмайбутніх потреб ринку.",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 15,
      maxFontSize: 25,
      textStyle: GoogleFonts.manrope(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black87,
          letterSpacing: 0));

  MagicText abtus1laptop = MagicText(
      "Філософія компанії — впровадження інноваційних рішень та технологій для створення сучасного житла, яке \nвідповідає стандартам якості.\n\nКоманда “Особняк Центр”- це експерти галузі, які мають ефективний досвід та великий портфель успішно \nреалізованих проектів, розумінням актуальних та майбутніх потреб ринку.",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 15,
      maxFontSize: 25,
      textStyle: GoogleFonts.manrope(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black87,
          letterSpacing: 0));

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
    asyncMode: true,
    textAlign: TextAlign.left,
    minFontSize: 7,
    maxFontSize: 26,
    textStyle: GoogleFonts.manrope(
        fontSize: 7,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 0),
  );

  MagicText questions = MagicText(
    "Наші фахівці з радістю дадуть відповідь на всі ваші запитання та підберуть найкращі \nпропозиції для будь-яких потреб, як для проживання так і для інвестицій.",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    minFontSize: 10,
    maxFontSize: 15,
    textStyle: GoogleFonts.manrope(
        fontSize: 9,
        fontWeight: FontWeight.w300,
        color: const Color(0xFF707479),
        height: 2),
  );

  MagicText infoadress = MagicText(
    "21007, місто Вінниця, вулиця Стрілецька, будинок 51\n sales@zoria.vn.ua",
    breakWordCharacter: '-',
    smartSizeMode: true,
    asyncMode: true,
    minFontSize: 8,
    maxFontSize: 15,
    textStyle: GoogleFonts.manrope(
        fontSize: 9,
        fontWeight: FontWeight.w300,
        color: Colors.white60,
        height: 2),
  );

  PageController _pageController =
      PageController(initialPage: 1000, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    double phoneMaxWidth = 500;
    double screenWidth = MediaQuery.of(context).size.width;
    double phoneMaxHeight = 950;
    double screenHeight = MediaQuery.of(context).size.height;
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
                    child: const Image(
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
            child: FittedBox(
              fit: BoxFit.contain,
              child: screenWidth > phoneMaxWidth
                  ? abtusHeadlineLaptop
                  : abtusHeadlinePhone,
            ),
          ),
          Container(
            color: Colors.black87,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 33, top: 20, right: 30),
            child: FittedBox(
              fit: BoxFit.contain,
              child: screenWidth > phoneMaxWidth ? abtus1laptop : abtus1phone,
            ),
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.08,
                            right: MediaQuery.of(context).size.width * 0.1,
                            left: MediaQuery.of(context).size.width * 0.1),
                        child: ourbuildings,
                      ),
                      Expanded(
                        child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (index) {
                            // Handle any logic related to the page change
                          },
                          itemBuilder: (context, index) {
                            return buildPage(index);
                          },
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ],
                      ),
                    ])),
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
                                color: const Color(0xFF707479),
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
                                color: const Color(0xFF707479),
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
                                color: const Color(0xFF707479),
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
                                color: const Color(0xFF707479),
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
            child: const Text('тут карта буде'),
          ),
          Container(
            color: const Color(0xFFF5F6FA),
            height: 500,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.07,
                  top: MediaQuery.of(context).size.height * 0.1),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.19,
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: questions,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1, top: MediaQuery.of(context).size.height * 0.01),
                  child: Container(
                    height: 45,
                    // screenHeight > phoneMaxHeight ? 50 : 40,
                    width:  MediaQuery.of(context).size.width * 0.9,
                    // screenWidth > phoneMaxWidth
                    //     ? MediaQuery.of(context).size.width * 0.4
                    //     : MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(
                        color: Colors.black26,
                        width: 0.5,
                      ),
                    boxShadow:const []
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Ім\'я',
                            hintStyle: GoogleFonts.openSans(
                                // fontStyle: FontStyle.italic,
                                fontSize: 13),
                            hoverColor: Colors.black87,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent),
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 15),
                          ),
                          cursorColor: Colors.black54,
                          cursorWidth: 0.5,
                          cursorHeight: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1, top: MediaQuery.of(context).size.height * 0.01),
                  child: Container(
                    height: 45,
                    // screenHeight > phoneMaxHeight ? 50 : 40,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(
                        color: Colors.black26,
                        width: 0.5,
                      ),
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Номер телефону',
                            hintStyle: GoogleFonts.openSans(
                                // fontStyle: FontStyle.italic,
                                fontSize: 13),
                            hoverColor: Colors.black87,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent),
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 15),
                          ),
                          cursorColor: Colors.black54,
                          cursorWidth: 0.5,
                          cursorHeight: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black87.withOpacity(0.3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              height: 50,
                              width: 80, // You might want to adjust the width
                              child: Center(
                                child: Text(
                                  "Відправити",
                                  style:  GoogleFonts.openSans(
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                     ],
                   ),
                 ),
              ]),
            ),
          ),
          Container(
            color: const Color(0xFF161D2D),
            height: 500,
            child: Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08, right: MediaQuery.of(context).size.width * 0.08),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                        width: 250,
                        child: Image(
                          image: AssetImage('assets/logos/white_logo_long.jpeg'),
                        ))
                      ],
                    ),
                  ),
                   Align(
                    alignment: Alignment.centerLeft,
                     child: Padding(
                       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                       child: infoadress,
                     ),
                   )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget buildPage(int index) {
    int pageIndex = index % 6; // Adjust the number based on the number of pages

    switch (pageIndex) {
      case 0:
        return Sadoviy();
      case 1:
        return EastPearl();
      case 2:
        return Podilya();
      case 3:
        return Striletska();
      case 4:
        return Sadok();
      case 5:
        return Zorya();
      default:
        return Container();
    }
  }
}

// ignore: must_be_immutable
class EastPearl extends StatelessWidget {
  EastPearl({super.key});

  MagicText eastpearl = MagicText("ЖК \"Східна Перлина\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Podilya extends StatelessWidget {
  Podilya({super.key});

  MagicText eastpearl = MagicText("ЖК \"Поділля\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Striletska extends StatelessWidget {
  Striletska({super.key});

  MagicText eastpearl = MagicText("ЖК \"Стрілецька\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Zorya extends StatelessWidget {
  Zorya({super.key});

  MagicText eastpearl = MagicText("ЖК \"Зоря\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Sadoviy extends StatelessWidget {
  Sadoviy({super.key});

  MagicText eastpearl = MagicText("ЖК \"Садовий\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Sadok extends StatelessWidget {
  Sadok({super.key});

  MagicText eastpearl = MagicText("ЖК \"Садок\" 2015-2018",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      textAlign: TextAlign.left,
      minFontSize: 10,
      maxFontSize: 17,
      textStyle: GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  MagicText eastpearD = MagicText(
      // "- чотири черги будівництва\nn- будівництво дитячого садочку\n\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир \nплощею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із\nдитячим спортивним майданчиком,\nігровою зоною та місцем відпочинку\nдорослих",
      "- чотири черги будівництва\n\n- будівництво дитячого садочку\"Дивосвіт\" на території комплексу\n\n- вісім десяти поверхових секцій\n\n- різноманітне планування квартир площею від 29м.кв. до 120м.кв\n\n- велика прибудинкова територія із дитячим спортивним майданчиком, ігровою зоною та місцем відпочинку дорослих",
      breakWordCharacter: '-',
      smartSizeMode: true,
      asyncMode: true,
      minFontSize: 8,
      maxFontSize: 15,
      textStyle: GoogleFonts.manrope(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white70,
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: eastpearl,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: eastpearD,
        ),
      ],
    );
  }
}
