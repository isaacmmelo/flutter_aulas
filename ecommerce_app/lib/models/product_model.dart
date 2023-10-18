// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModelData {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final bool popular;
  bool favorite;
  final String category;
  ProductModelData({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.popular,
    required this.favorite,
    required this.category,
  });

  ProductModelData copyWith({
    String? name,
    String? price,
    String? imagePath,
    String? description,
    bool? popular,
    bool? favorite,
    String? category,
  }) {
    return ProductModelData(
      name: name ?? this.name,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
      popular: popular ?? this.popular,
      favorite: favorite ?? this.favorite,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'description': description,
      'popular': popular,
      'favorite': favorite,
      'category': category,
    };
  }

  factory ProductModelData.fromMap(Map<String, dynamic> map) {
    return ProductModelData(
      name: map['name'] as String,
      price: map['price'] as String,
      imagePath: map['imagePath'] as String,
      description: map['description'] as String,
      popular: map['popular'] as bool,
      favorite: map['favorite'] as bool,
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModelData.fromJson(String source) =>
      ProductModelData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModelData(name: $name, price: $price, imagePath: $imagePath, description: $description, popular: $popular, favorite: $favorite, category: $category)';
  }

  @override
  bool operator ==(covariant ProductModelData other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.price == price &&
        other.imagePath == imagePath &&
        other.description == description &&
        other.popular == popular &&
        other.favorite == favorite &&
        other.category == category;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        price.hashCode ^
        imagePath.hashCode ^
        description.hashCode ^
        popular.hashCode ^
        favorite.hashCode ^
        category.hashCode;
  }
}
