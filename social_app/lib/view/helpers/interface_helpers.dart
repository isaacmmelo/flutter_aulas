import 'package:flutter/material.dart';
import 'package:social_app/view/components/my_progressindicator.dart';

void displayMessage(String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(message),
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
