import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/pages/homePage.dart';
import 'package:ecommerce_app/pages/introPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/homepage': (context) => HomePage(),
          '/intropage': (context) => const IntroPage()
        },
      ),
    );
  }
}
