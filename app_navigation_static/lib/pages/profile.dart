import 'package:app_navigation/components/myAppBar.dart';
import 'package:app_navigation/components/myDrawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar("P E R F I L"),
      drawer: MyDrawer(),
      body: Center(child: Text("Utilize o Drawer para navegar")),
    );
  }
}
