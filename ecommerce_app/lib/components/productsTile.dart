import 'package:ecommerce_app/components/myFavoriteButton.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsTile extends StatelessWidget {
  Products product;
  void Function()? onTap;
  void Function()? favoriteTap;
  ProductsTile(
      {super.key,
      required this.product,
      required this.onTap,
      required this.favoriteTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //Product Pic
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              product.imagePath,
              height: 120,
            )),
        //Decription
        Text(
          product.description,
          style: TextStyle(color: Colors.grey[600]),
        ),

        //Price + details
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  //shoe price
                  Text(product.price)
                ],
              ),

              //Button to add cart
              Row(
                children: [
                  GestureDetector(
                      onTap: favoriteTap,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                              )),
                          child: MyFavoriteButton(isActive: product.favorite))),

                  //Button to add cart
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
