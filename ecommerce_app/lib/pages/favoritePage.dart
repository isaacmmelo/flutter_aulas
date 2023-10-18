import 'package:ecommerce_app/components/fav_item.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Meus favoritos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getUserFav().length,
                    itemBuilder: (context, index) {
                      Products individialProduct = value.getUserFav()[index];

                      return FavItem(
                        product: individialProduct,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
