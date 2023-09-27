import 'package:flutter/material.dart';
import 'package:todo_app/components/dialog_box.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({super.key});

  void createNewTask(context) {
    showDialog(context: context, builder: (context) => const DialogBox());
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => createNewTask(context),
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
