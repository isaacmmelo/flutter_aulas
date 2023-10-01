import 'package:app_navigation/pages/config.dart';
import 'package:app_navigation/pages/home.dart';
import 'package:app_navigation/pages/intro.dart';
import 'package:app_navigation/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/intropage': (context) => const IntroPage(),
        '/config': (context) => const ConfigPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
