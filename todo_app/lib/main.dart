// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/home.dart';

void main() async {
  //Precisamos da função asyncrona para carregar o Hive
  //Essa função é executa de forma separada da função principal do aplicativo

  //Inicializar o Hive
  await Hive.initFlutter();

  //Abrindo a box do Hive
  var box = await Hive.openBox('toDobox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), //Define nossa página principal
      theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: Typography.blackHelsinki,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.black,
          ),
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(),
              hintStyle: TextStyle(color: Colors.black))),
    );
  }
}
