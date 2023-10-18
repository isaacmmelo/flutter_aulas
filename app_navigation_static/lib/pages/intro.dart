import 'package:app_navigation/components/my_appbar.dart';
import 'package:app_navigation/components/my_drawer.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar("I N T R O  P A G E"),
      drawer: MyDrawer(),
      body: Center(child: Text("Utilize o Drawer para navegar")),
    );
  }
}
