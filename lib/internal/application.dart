import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/screen1.dart';
import 'package:flutter_application_2/presentation/widgets/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/',
    routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const Home(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/screen1': (context) => const Screen1(),
  },
       debugShowCheckedModeBanner: false,
      title: 'Pet Adoption App',
    );
  }
}