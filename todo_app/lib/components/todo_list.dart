import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            //CheckBox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //Task Name
            Text(taskName),
          ],
        ),
      ),
    );
  }
}
