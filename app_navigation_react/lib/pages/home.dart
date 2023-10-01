import 'package:app_navigation_react/components/myAppBar.dart';
import 'package:app_navigation_react/components/myDrawer.dart';
import 'package:app_navigation_react/components/myNavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar("H O M E  P A G E"),
      drawer: MyDrawer(),
      bottomNavigationBar: MyNavBar(),
      body: Center(
          child: ElevatedButton(
        child: const Text("Go To Intro"),
        onPressed: () {
          Navigator.pushNamed(context, '/intropage');
        },
      )),
    );
  }
}
