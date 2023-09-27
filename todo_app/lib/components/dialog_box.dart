import 'package:flutter/material.dart';
import 'package:todo_app/components/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  // ignore: prefer_const_constructors_in_immutables
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Adicionar uma nova tarefa",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Salvar", onPressed: onSave),
                const SizedBox(
                  width: 5.0,
                ),
                MyButton(text: "Cancelar", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
