import 'package:app_navigation/components/my_appbar.dart';
import 'package:app_navigation/components/my_drawer.dart';
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
      appBar: const MyAppBar("H O M E  P A G E"),
      drawer: const MyDrawer(),
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
