import 'package:flutter/material.dart';
import 'package:social_app/view/pages/forgot_page.dart';
import 'package:social_app/view/pages/home_page.dart';
import 'package:social_app/view/pages/login_page.dart';
import 'package:social_app/view/pages/register_page.dart';
import 'package:social_app/view/theme/dark_mode.dart';
import 'package:social_app/view/theme/light_mode.dart';

void main() {
  runApp(const SocialApp());
}

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lighMode,
      darkTheme: darkMode,
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgotPass': (context) => ForgotPage(),
        '/homePage': (context) => HomePage(),
      },
    );
  }
}
