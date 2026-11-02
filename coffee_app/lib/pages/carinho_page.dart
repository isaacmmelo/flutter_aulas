import 'package:flutter/material.dart';

const Color principal = Color(0xFF795548);

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Carrinho'),
        backgroundColor: principal,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Icon(
              Icons.shopping_cart,
              size: 80,
              color: principal,
            ),

            const SizedBox(height: 20),

            const Text(
              'Seu carrinho está vazio',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Adicione seus cafés favoritos!',
              style: TextStyle(fontSize: 16),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: principal,
                  foregroundColor: Colors.white,
                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text('Voltar ao Menu'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}