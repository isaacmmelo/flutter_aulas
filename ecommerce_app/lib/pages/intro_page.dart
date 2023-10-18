// ignore_for_file: unused_field, unused_element

import 'package:ecommerce_app/data/b4a/connect_b4a.dart';
// ignore: unused_import
import 'package:ecommerce_app/controller/product_controller.dart';

import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Future<bool> _isConnected() async {
    return initB4A();
  }

  final bool _dbStatus = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
