import 'package:app_navigation_react/components/my_appbar.dart';
import 'package:app_navigation_react/components/my_drawer.dart';
import 'package:app_navigation_react/components/my_navbar.dart';
import 'package:app_navigation_react/pages/initial.dart';
import 'package:app_navigation_react/pages/profile.dart';
import 'package:app_navigation_react/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List _pages = [
    //homepage
    const InitialPage(),

    //Profile
    const ProfilePage(),

    //Settings
    const SettingPage(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("H O M E  P A G E"),
      drawer: const MyDrawer(),
      bottomNavigationBar: MyNavBar(_selectedIndex, _selectPage),
      body: _pages[_selectedIndex],
    );
  }
}
