import 'package:ecommerce_app/components/my_appbar.dart';
import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
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
              'Lorem ipsum dolor sit amet. Ut voluptatem nihil eum optio eius et quae minus sed unde quidem aut voluptate beatae ab iste nemo. Eum laborum voluptatem ut asperiores labore qui velit nobis qui Quis voluptatibus non harum iure eum obcaecati quia sed quaerat vero. Ea cupiditate veritatis ut quae animi eum nihil tenetur id eaque consectetur et quasi omnis sit facere saepe. Est distinctio natus eum sint aliquam qui debitis corporis ea nihil velit ut voluptatem velit est maiores culpa et iste omnis.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            //Espace
            const SizedBox(height: 80),

            //Title
          ]),
        ),
      ),
    );
  }
}
