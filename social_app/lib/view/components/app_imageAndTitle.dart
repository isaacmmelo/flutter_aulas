import 'package:flutter/material.dart';

class ImageAndTitle extends StatelessWidget {
  const ImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Ícone do Sistema
        ClipRRect(
          child: Image.asset(
            'lib/images/appIcon.png',
            height: 80,
          ),
        ),
        //Espaço embranco
        const SizedBox(height: 5),
        //Nome do Aplicativo
        const Text(
          'D A S H  S O C I A L',
          style: TextStyle(fontSize: 20),
        ),
        //Espaço em branco
        const SizedBox(height: 25),
      ],
    );
  }
}
