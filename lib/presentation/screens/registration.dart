// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorya_2/presentation/widgets/pick.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  int switcherIndex1 = 0;
  String pib = '';
  String phoneNumber = '';
  String password = '';
  String confirmPassword = '';

  bool isSignUp = true;

  String surname = '';
  String name = '';
  String patronymic = '';
  List<String> nameParts = [];

  @override
  Widget build(BuildContext context) {
    if (nameParts.isEmpty && pib.isNotEmpty) {
      nameParts = pib.split(' ');

      if (nameParts.length >= 3) {
        surname = nameParts[0];
        name = nameParts[1];
        patronymic = nameParts[2];
      }
    }

    double phoneMaxHeight = 950;
    double screenHeight = MediaQuery.of(context).size.height;
    
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
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: screenHeight > phoneMaxHeight
                        ? MediaQuery.of(context).size.height * 0.15
                        : MediaQuery.of(context).size.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.25,
                      child: Image.asset(
                        'assets/logos/white_logo.png',
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // SWITCH BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SlideSwitcher(
                          children: [
                            Text('Sign up',
                                style: TextStyle(
                                    color: switcherIndex1 == 0
                                        ? Colors.black87
                                        : Colors.white)),
                            Text('Log in',
                                style: TextStyle(
                                    color: switcherIndex1 == 1
                                        ? Colors.black87
                                        : Colors.white)),
                          ],
                          onSelect: (index) =>
                              setState(() => switcherIndex1 = index),
                          containerHeight: 40,
                          containerWight: 180,
                          // MediaQuery.of(context).size.width * 0.6,
                          containerColor: Colors.black87.withOpacity(0.5),
                          slidersColors: [
                            const Color(0xFFFBCD72).withOpacity(0.9),
                          ],
                        ),
                        const SizedBox(height: 20),
                        if (switcherIndex1 == 0) ...[
                          _buildSignUpFields()
                        ] else ...[
                          _buildLogInFields()
                        ],
                      ],
                    ),
                  ],
                ),
                // const SizedBox(height: 20),
                //TEXT FIELD: PIB
                // isSignUp ? _buildSignUpFields() : _buildLogInFields(),
                const SizedBox(height: 10),
                //TEXT FIELD: SKIP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pick()),
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
                            "Пропустити",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double getButtonHeight(bool isPressed) {
    return isPressed ? 40.0 : 20.0;
  }

  Widget _buildSignUpFields() {
    double phoneMaxWidth = 500;
    double screenWidth = MediaQuery.of(context).size.width;
     double phoneMaxHeight = 700;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight > phoneMaxHeight
                        ? 50
                        : 40,
              width: screenWidth > phoneMaxWidth
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.9, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'ПІБ',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
       SizedBox(height: screenHeight > phoneMaxHeight
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
        //TEXT FIELD: PHONE NUMBER
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:  screenHeight > phoneMaxHeight
                        ? 50
                        : 40,
              width: screenWidth > phoneMaxWidth
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.9, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Номер телефону',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 8),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
       SizedBox(height: screenHeight > phoneMaxHeight
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
        //TEXT FIELD: PASSWORD
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight > phoneMaxHeight
                        ? 50
                        : 40,
              width: screenWidth > phoneMaxWidth
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.9, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Пароль',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
         SizedBox(height: screenHeight > phoneMaxHeight
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
        //TEXT FIELD: PASSWORD 2
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight > phoneMaxHeight
                        ? 50
                        : 40,
              width: screenWidth > phoneMaxWidth
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.9, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Підтвердіть пароль',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
         SizedBox(height: screenHeight > phoneMaxHeight
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.025),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pick()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary:
                    // const Color(0xFFFBCD72).withOpacity(0.9),
                    const Color(0xFF3F945D).withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9), // BorderRadius
                ),
                minimumSize: const Size(250, 45), // Size of the button
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Зареєструватися",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        // Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

//LOG IN WIDGET
  Widget _buildLogInFields() {
    return Column(
      children: [
        const SizedBox(height: 20),
        //TEXT FIELD: PHONE NUMBER
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 340, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Номер телефону',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        //TEXT FIELD: PASSWORD
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 340, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 5, 10),
                    child: Icon(
                      Icons.check_sharp,
                      color: Colors.black45,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            pib = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Пароль',
                          hintStyle: GoogleFonts.openSans(
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          hoverColor: Colors.black87,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pick()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF3F945D), // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9), // BorderRadius
                ),
                minimumSize: const Size(250, 45), // Size of the button
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Увійти",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
