import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Center(child: Text(title)),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(35.0);
}
