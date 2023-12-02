import 'package:flutter/material.dart';
import 'package:zorya_2/presentation/screens/home.dart';
import 'package:zorya_2/presentation/screens/more_screen.dart';
import 'package:zorya_2/presentation/screens/registration.dart';
import 'package:zorya_2/presentation/widgets/about_us.dart';

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Зоря 2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: 
        // const AboutUs()
        // const Registration()
        Bnb()
        );
  }
}
