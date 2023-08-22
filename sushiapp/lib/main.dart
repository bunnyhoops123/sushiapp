import 'package:flutter/material.dart';
import 'package:sushiapp/pages/intropage.dart';
import 'package:sushiapp/pages/menupage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        "/introPage": (context) => IntroPage(),
        "/menuPage": (context) => MenuPage(),
      },
    );
  }
}
