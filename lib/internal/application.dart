import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/registration.dart';
import 'package:flutter_application_2/presentation/widgets/home.dart';

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Registration());
  }
}
