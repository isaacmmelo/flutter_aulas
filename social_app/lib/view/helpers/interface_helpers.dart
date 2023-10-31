import 'package:flutter/material.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_progressindicator.dart';

void displayMessage(
  String title,
  String message,
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

void displayConfirmationMessage(
  String title,
  String message,
  BuildContext context,
  Function()? onTapButton,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
      actions: [MyButton(buttonText: 'Ok', onTapButton: onTapButton)],
    ),
  );
}

void loadingCircleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Center(
      child: MyProgressIndicator(text: ""),
    ),
  );
}
