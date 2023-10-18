// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Column(children: [
        DrawerHeader(
            child: Icon(
          Icons.route,
          color: Colors.red,
        )),
        ListTile(
          //Utilizamos o ListTitle para podemos criar os títula e espaço de navegação
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text("Home Page", style: TextStyle(color: Colors.white)),
          onTap: () => Navigator.pushNamed(context, '/homepage'),
        ),
        ListTile(
          //Utilizamos o ListTitle para podemos criar os títula e espaço de navegação
          leading: Icon(
            Icons.account_balance,
            color: Colors.white,
          ),
          title: Text("Intro Page", style: TextStyle(color: Colors.white)),
          onTap: () => Navigator.pushNamed(context, '/intropage'),
        ),
      ]),
    );
  }
}
