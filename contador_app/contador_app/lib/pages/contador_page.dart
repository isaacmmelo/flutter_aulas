import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  //Variáveis
  // ignore: unused_field
  int _contador = 0;

  //Métodos
  // ignore: unused_element
  void _incrementContador() {
    setState(() {
      _contador++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
