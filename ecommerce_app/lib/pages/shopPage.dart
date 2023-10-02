import 'package:ecommerce_app/components/productsTile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //Add item to cart
  void onTap(Products product) {
    print('testeasdasdas');
    //Provider.of<Cart>(context, listen: false).addItemToCart(product);

    //Alerta
    /* showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Adicionado com sucesso"),
              content: Text("Verifique o carrinho"),
            )); */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Search Bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Popular 🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
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
                    Products product = value.getProductsList1()[index];

                    return ProductsTile(
                      product: product,
                      onTap: () => onTap(product),
                    );
                  },
                )),

                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

/*                 //Products Tiles
                Expanded(
                    child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Products product = value.getProductsList2()[index];

                    return ProductsTile(
                      product: product,
                      onTap: () => addProductToCart(product),
                    );
                  },
                )), */
              ],
            ));
  }
}
