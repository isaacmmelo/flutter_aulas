import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: Typography.blackHelsinki,
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.black),
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(),
              hintStyle: TextStyle(color: Colors.black))),
    );
  }
}
