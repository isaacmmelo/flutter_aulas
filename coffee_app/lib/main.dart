import 'package:flutter/material.dart';
import 'package:social_app/pages/tela_menu.dart';

import 'tela_login.dart';

void main() {
  runApp(const MeuApp() as Widget);
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marina Aroma & Arte',
      theme: ThemeData(
        scaffoldBackgroundColor: fundo,
        useMaterial3: true,
      ),
      home: const TelaLogin(),
      routes: {
        '/login': (context) => const TelaLogin(),
        '/menu':(context) => const MenuPage()
      },
    );
  }
}


// CORES
const Color fundo = Color(0xFFFFFBF1);
const Color principal = Color(0xFF7C3D17);
const Color cartao = Color(0xFFFFF8CD);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marina Aroma & Arte',
      theme: ThemeData(
        scaffoldBackgroundColor: fundo,
        useMaterial3: true,
      ),
      home: const TelaLogin(),
    );
  }


