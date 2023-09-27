import 'package:flutter/material.dart';
import 'package:todo_app/components/MyAppBar.dart';
import 'package:todo_app/components/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _pageTitle = "Home Page";

  //Adicionar Lista
  //Adicionar método para marcar ou não o checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: MyAppBar(_pageTitle),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {},
      ),
    );
  }
}
