import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
              const SizedBox(height: 5),
              //SWITCH BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSignUp = true;
                        pib = phoneNumber = password = confirmPassword = '';
                        nameParts = []; // Switch to Sign Up mode
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: isSignUp
                            ? const Color(0xFFFBCD72).withOpacity(0.9)
                            : Colors.black87.withOpacity(0.5),
                        fixedSize: const Size.fromHeight(40)),
                    child: const Text('Sign Up'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSignUp = false; // Switch to Log In mode
                        pib = phoneNumber = password = confirmPassword = '';
                        nameParts = [];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: isSignUp
                          ? Colors.black87.withOpacity(0.5)
                          : const Color(0xFFFBCD72),
                    ),
                    child: const Text('Log In'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //TEXT FIELD: PIB
                isSignUp
              ? _buildSignUpFields()
              : _buildLogInFields(),
          const SizedBox(height: 10),
              //TEXT FIELD: SKIP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 200, //change to percentage
                      decoration: BoxDecoration(
                          color: Colors.black87.withOpacity(0.4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Пропустити",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16),
                          ),
                        ],
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSignUpFields() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 340, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'ПІБ',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        //TEXT FIELD: PHONE NUMBER
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 340, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Номер телефону',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
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
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Пароль',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        //TEXT FIELD: PASSWORD 2
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 340, //change to percentage
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Підтвердіть пароль',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
         Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle the button press
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
                          "Зареєструватися",
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
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Номер телефону',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
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
                  color: Colors.white.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      pib = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Пароль',
                    hoverColor: Colors.black87,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 5),
                  ),
                  cursorColor: Colors.black87,
                ),
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
                      // Handle the button press
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
