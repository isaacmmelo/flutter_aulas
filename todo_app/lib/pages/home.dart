import 'package:flutter/material.dart';
import 'package:todo_app/components/dialog_box.dart';
import 'package:todo_app/components/my_appbar.dart';
import 'package:todo_app/components/todo_list.dart';
import 'package:todo_app/controller/homePage_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _pageTitle = "Home Page";

  final _controller = TextEditingController();

  final _homePageController = HomePageController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      _homePageController.toDoList[index][1] =
          !_homePageController.toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      _homePageController.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(int index) {
    setState(() {
      _homePageController.toDoList.removeAt(index);
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: MyAppBar(_pageTitle),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: _homePageController.toDoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoList(
            taskName: _homePageController.toDoList[index][0],
            taskCompleted: _homePageController.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
