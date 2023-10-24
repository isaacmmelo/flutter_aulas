// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //Coluna alinhada com espaço entre elas
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //Coluna alinhada com espaço entre elas
              children: [
                //Logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/appIcon.png',
                    height: 80,
                  ),
                ),

                //Divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.grey.shade800),
                ),

                //Pages
                //Home
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/homepage'),
                  ),
                ),

                //About
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info_rounded,
                      color: Colors.white,
                    ),
                    title: Text("Sobre", style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/aboutpage'),
                  ),
                ),
              ],
            ),

            //Logout
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .end, //Coluna alinhada no eixo vertical para ficar no final da página
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                    title:
                        Text("Logout", style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/intropage'),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
