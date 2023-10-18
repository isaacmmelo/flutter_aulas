import 'package:flutter/material.dart';

ThemeData lighMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Colors.grey.shade300,
        primary: Colors.grey.shade200,
        secondary: Colors.grey.shade400,
        inversePrimary: Colors.grey.shade900),
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.grey[900],
          displayColor: Colors.black,
        ));
