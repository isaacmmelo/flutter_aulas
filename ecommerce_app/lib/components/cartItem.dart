import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Products product;
  CartItem({super.key, required this.product});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //Remove método
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false)
        .removeItemFromCart(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.product.imagePath,
          width: 90,
        ),
        title: Text(widget.product.name),
        subtitle: Text(widget.product.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete_rounded),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
