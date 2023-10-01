import 'package:app_navigation_react/components/myAppBar.dart';
import 'package:app_navigation_react/components/myDrawer.dart';
import 'package:app_navigation_react/components/myNavBar.dart';
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
    InitialPage(),

    //Profile
    ProfilePage(),

    //Settings
    SettingPage(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar("H O M E  P A G E"),
      drawer: MyDrawer(),
      bottomNavigationBar: MyNavBar(_selectedIndex, _selectPage),
      body: _pages[_selectedIndex],
    );
  }
}
