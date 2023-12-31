import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //Lista de produtos a venda
  List<Products> productShop1 = [
    Products(
        name: 'Tenis Nike Jordan',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/shoe1.png',
        description: 'Um tênis legal',
        popular: true,
        favorite: false,
        category: 'Shoe'),
    Products(
        name: 'Tenis QC',
        price: 'R\$ 229,90',
        imagePath: 'lib/images/shoe2.png',
        description: 'Um tênis legal',
        popular: true,
        favorite: false,
        category: 'Shoe'),
    Products(
        name: 'Tenis Nike Verde',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/shoe3.png',
        description: 'Um tênis legal',
        popular: true,
        favorite: false,
        category: 'Shoe'),
    Products(
        name: 'Tenis Colorido',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/shoe4.png',
        description: 'Um tênis legal',
        popular: true,
        favorite: false,
        category: 'Shoe')
  ];

  List<Products> productShop2 = [
    Products(
        name: 'Raquete de Tenis',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/product1.png',
        description: 'Uma raquete legal',
        popular: true,
        favorite: false,
        category: 'Other'),
    Products(
        name: 'Raquetes de Tenis',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/product2.png',
        description: 'Duas raquetes legais',
        popular: true,
        favorite: false,
        category: 'Other'),
    Products(
        name: 'Bola de futebol Nike',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/product3.png',
        description: 'Uma bola legal',
        popular: true,
        favorite: false,
        category: 'Other'),
    Products(
        name: 'Bola de basquete',
        price: 'R\$ 329,90',
        imagePath: 'lib/images/product4.png',
        description: 'Uma bola legal',
        popular: true,
        favorite: false,
        category: 'Other'),
  ];

  //Lista de produtos no carrinho
  List<Products> userCart = [];

  //Lista de produtos favoritos
  List<Products> userFavorits = [];

  //Get lista de produtos a venda
  List<Products> getProductsList1() {
    return productShop1;
  }

  List<Products> getProductsList2() {
    return productShop2;
  }

  //Get carrinho
  List<Products> getUserCart() {
    return userCart;
  }

  List<Products> getUserFav() {
    return userFavorits;
  }

  void addItemToCart(Products product) {
    userCart.add(product);
    notifyListeners();
  }

  //Remove itens do carrinho
  void removeItemFromCart(Products product) {
    userCart.remove(product);
    notifyListeners();
  }

  void addItemToFavorits(Products product) {
    userFavorits.add(product);
    notifyListeners();
  }

  //Remove itens do carrinho
  void removeItemFromFavorits(Products product) {
    userFavorits.remove(product);
    notifyListeners();
  }
}
