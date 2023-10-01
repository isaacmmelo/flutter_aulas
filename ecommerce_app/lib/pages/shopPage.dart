import 'package:ecommerce_app/components/productsTile.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Search Bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Buscar",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search_rounded)
            ],
          ),
        ),

        //Popular
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Popular 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ]),
        ),

        //Espace
        const SizedBox(
          height: 10,
        ),

        //Products Tiles
        Expanded(
            child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Products product = Products(
                name: 'Tenis Nike Jordan',
                price: 'R\$ 329,90',
                imagePath: 'lib/images/shoe1.png',
                description: 'Um tênis legal',
                popular: true,
                category: 'Shoe');

            return ProductsTile(product: product);
          },
        )),

        const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Divider(
            color: Colors.white,
          ),
        ),

        //Products Tiles
        Expanded(
            child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Products product = Products(
                name: 'Raquete para tênis',
                price: 'R\$ 249,90',
                imagePath: 'lib/images/product1.png',
                description: 'Uma raquete legal',
                popular: true,
                category: 'Other');

            return ProductsTile(product: product);
          },
        )),
      ],
    );
  }
}
