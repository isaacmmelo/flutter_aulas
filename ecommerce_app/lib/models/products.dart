import 'package:flutter/material.dart';

class Products extends ChangeNotifier {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final bool popular;
  final String category;

  Products(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.description,
      required this.popular,
      required this.category});
}
