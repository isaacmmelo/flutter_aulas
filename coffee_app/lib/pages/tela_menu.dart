import 'package:flutter/material.dart';

const Color principal = Color(0xFF795548);

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nosso Menu'),
        backgroundColor: principal,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Cafés',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          produto('Café Expresso', 'R\$ 6,00'),
          produto('Cappuccino', 'R\$ 10,00'),
          produto('Café com Leite', 'R\$ 8,00'),
          produto('Chocolate Quente', 'R\$ 12,00'),

          const SizedBox(height: 25),

          const Text(
            'Acompanhamentos',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          produto('Pão de Queijo', 'R\$ 7,00'),
          produto('Bolo de Chocolate', 'R\$ 9,00'),
        ],
      ),
    );
  }

  Widget produto(String nome, String preco) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.coffee,
          color: principal,
          
        ),
        title: Text(nome),
        trailing: Text(preco),
      ),
    );
  }
}
