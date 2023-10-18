// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_final_fields, must_be_immutable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  int _selectedIndex = 0;
  ValueChanged<int> _selectPage;
  MyNavBar(this._selectedIndex, this._selectPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
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
      ],
      onTap: _selectPage,
    );
  }
}
