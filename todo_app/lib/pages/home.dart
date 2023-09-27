import 'package:flutter/material.dart';
import 'package:todo_app/components/my_appbar.dart';
import 'package:todo_app/components/plus_button.dart';
import 'package:todo_app/components/todo_list.dart';
import 'package:todo_app/controller/homePage_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _pageTitle = "Home Page";

  final _homePageController = HomePageController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      _homePageController.toDoList[index][1] =
          !_homePageController.toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: MyAppBar(_pageTitle),
      floatingActionButton: PlusButton(),
      body: ListView.builder(
        itemCount: _homePageController.toDoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoList(
              taskName: _homePageController.toDoList[index][0],
              taskCompleted: _homePageController.toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
