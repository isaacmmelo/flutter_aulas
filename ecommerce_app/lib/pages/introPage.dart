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
              'Compre certo, compre barato!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            //Espace
            const SizedBox(height: 80),

            //Button Entrar
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/homepage'),
              //onTap: () => ProductController.getProductList(),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            )

            //Title
          ]),
        ),
      ),
    );
  }
}
