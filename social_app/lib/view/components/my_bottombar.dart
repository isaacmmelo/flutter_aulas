import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20), //Padding do container
      child: GNav(
        color: Colors.grey[400], //Cor padrão
        activeColor: Colors.grey.shade700, //Cor da barra ativa
        tabActiveBorder:
            Border.all(color: Colors.white), //Borda para a barra ativa
        tabBackgroundColor:
            Colors.grey.shade100, //Cor de fundo para a barra ativa
        mainAxisAlignment: MainAxisAlignment.center, //Alinhar ao centro da tela
        tabBorderRadius: 10, //Deixar mais quadrado
        onTabChange: (value) => onTabChange!(
            value), //Função para trocar a página quando trocar a tab
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 10), //Tamanho do padding interno da tab
        tabs: const [
          GButton(
            icon: Icons.storefront_rounded,
            text: 'UM',
          ),
          GButton(
            icon: Icons.storefront_rounded,
            text: 'DOIS',
          ),
          GButton(
            icon: Icons.storefront_rounded,
            text: 'TRES',
          ),
        ],
      ),
    );
  }
}
