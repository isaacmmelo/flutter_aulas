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
  //Variáveis para a página
  String _text = "Ajustando as coisas";
  bool _state = false;

  //Método inicial para checar a conexão
  @override
  void initState() {
    super.initState();
    //Verificar se está conectado
    log('InitPage: Checando Conexão');
    _checkConnection();
  }

  //Função para alterar o estado do Widget
  void _changeText(String text) {
    log('InitPage: Alterando texto $text');

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _text = text;
      });
    });
  }

  //Método para checar a conexão
  void _checkConnection() async {
    //Se o State for positivo, está conectado
    if (_state) {
      log('InitPage: Conectado 1');
      _changeText('Redirecionando para o login');
      goToLogin(context);
    } else {
      //Se não, tenta a conexão
      log('InitPage: Não conectado, conectando');
      _changeText('Conectando ao Backend');
      _state = _backController.initBackend();
      //Se o estado após a conexão for verdadeiro
      if (_state) {
        //Redirecina para o login
        log('InitPage: Conectado 2');
        _changeText('Redirecionando para o login');
        goToLogin(context);
      } else {
        //Exibe o erro e solicita reinicio
        log('InitPage: Erro ao conectar');
        _changeText('Erro ao conectar');
        _changeText('Reinicie o aplicativo');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget body = Center(
      child: MyProgressIndicator(text: _text),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: body,
    );
  }
}
