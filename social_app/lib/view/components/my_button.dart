// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  void Function()? onTapButton;
  MyButton({
    super.key,
    required this.buttonText,
    required this.onTapButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding:
            const EdgeInsets.only(bottom: 15, top: 15, left: 75, right: 75),
        child: Text(buttonText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
