import 'package:flutter/material.dart';

class AppBarContador extends StatelessWidget {
  const AppBarContador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainApp Bar"), //Adicionamos um título a barra
        backgroundColor: Colors.deepPurple, //Podemos mudar a cor de fundo
        elevation: 0, //Podemos tirar ou aumentar a 'sombra' da barra
        actions: [
          //Ações são ícones a direita do aplicativo
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
        ], //Todos os ícones de ação irão para o lado direito
      ),
    );
  }
}
