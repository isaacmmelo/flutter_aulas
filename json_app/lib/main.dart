// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MainApp({super.key});
  
  Future<List<Map<String, dynamic>>> carregarQuestoes() async {
  String jsonString =
      await rootBundle.loadString(
        'lib/assets/json/bancoQuestoes.json',
      );
      
      print(jsonString);

  Map<String, dynamic> dados =
      jsonDecode(jsonString);

  return List<Map<String, dynamic>>.from(dados['perguntas'],
  );
}

  Future<void> listarQuestoes() async {
    List<Map<String, dynamic>> questoes =
        await carregarQuestoes();

        print('Total: ${questoes.length}');

        for (var questao in questoes) {
          print(questao['enunciado']);
          print(questao['peso']);
        }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: FloatingActionButton(
              onPressed: () async {  
                await listarQuestoes(); 
              }, 
              backgroundColor: Colors.black,)
          )
      ),
    );
  }
}
