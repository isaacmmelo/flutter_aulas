import 'package:ecommerce_app/components/my_appbar.dart';
import 'package:ecommerce_app/components/my_bottombar.dart';
import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/favorit_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Rastrear o index da navbar
  int _selectedIndex = 0;

  //Método que será chamado quando trocar de tab
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //Shop Page
    const ShopPage(),

    //Favorite Page
    const FavoritePage(),

    //Cart Page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: const MyAppBar(),
        drawer: const MyDrawer(),
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: Center(child: _pages[_selectedIndex]));
  }
}
