import 'package:app_navigation_react/components/myAppBar.dart';
import 'package:app_navigation_react/components/myDrawer.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar("C O N F I G U R A Ç Ã O"),
      drawer: MyDrawer(),
      body: Center(child: Text("Utilize o Drawer para navegar")),
    );
  }
}
