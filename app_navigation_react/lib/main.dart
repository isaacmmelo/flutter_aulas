import 'package:app_navigation_react/pages/initial.dart';
import 'package:app_navigation_react/pages/settings.dart';
import 'package:app_navigation_react/pages/home.dart';
import 'package:app_navigation_react/pages/intro.dart';
import 'package:app_navigation_react/pages/profile.dart';
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
        '/inicial': (context) => const InitialPage(),
        '/config': (context) => const SettingPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
