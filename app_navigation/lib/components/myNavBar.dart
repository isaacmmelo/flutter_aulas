// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        items: [
          //Home
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          //Perfil
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Perfil',
          ),
          //Configurações
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Configurações',
          ),
        ]);
  }
}
