import 'package:ecommerce_app/pages/homePage.dart';
import 'package:ecommerce_app/pages/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/intropage': (context) => const IntroPage()
      },
    );
  }
}
