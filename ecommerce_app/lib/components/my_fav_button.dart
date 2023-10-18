import 'package:flutter/material.dart';

class MyFavoriteButton extends StatelessWidget {
  final bool isActive;
  const MyFavoriteButton({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return const Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else {
      return const Icon(
        Icons.favorite,
        color: Colors.grey,
      );
    }
  }
}
