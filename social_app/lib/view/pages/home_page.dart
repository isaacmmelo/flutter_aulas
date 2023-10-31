import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:social_app/view/components/my_appbar.dart';
import 'package:social_app/view/components/my_bottombar.dart';
import 'package:social_app/view/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? userName = 'asdasda';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Center(child: Text(userName.toString())),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (p0) => (),
      ),

      //bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
