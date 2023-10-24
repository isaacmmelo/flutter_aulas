// ignore_for_file: must_be_immutable, unused_import

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:social_app/controller/controller/b4app_controller.dart';
import 'package:social_app/view/components/my_progressindicator.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';

class InitPage extends StatefulWidget {
  InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  //Iniciando o B4App Controller
  final B4AppController _backController = B4AppController();
  String _text = "Ajustando as coisas";
  bool state = false;

  void _changeText(String text) {
    setState(() {
      _text = text;
    });
  }

  @override
  void initState() {
    super.initState();

    //Verificar se está conectado
    _backController.checkConnection().then((value) => state);

    if (state) {
      _changeText('Redirecionando para o Login');
      goToLogin(context);
    } else {
      _changeText('Conectando ao Bakcend');
      _backController.initBackend().then((value) => state);
      if (state) {
        _changeText('Conectado, redirecionando para o Login');
        goToLogin(context);
      } else {
        _changeText('Erro ao conectar, reinicie o aplicativo');
        goToLogin(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: GestureDetector(
          child: MyProgressIndicator(text: _text),
          onTap: () => goToLogin(context),
        ),
      ),
    );
  }
}
