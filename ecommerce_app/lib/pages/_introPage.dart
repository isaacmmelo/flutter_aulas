// ignore: unused_import
import 'package:ecommerce_app/controller/productController.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            //Espace
            const SizedBox(height: 100),
            //Logo
            Image.asset(
              'lib/images/logo.png',
              height: 240,
            ),

            const Text(
              'Carregando',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            //Espace
            const SizedBox(height: 80),

            //Carregando
            const SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(),
            ),

            //Title
          ]),
        ),
      ),
    );
  }
}
