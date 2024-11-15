import 'package:burger_shop/constants.dart';
import 'package:burger_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  final Product product;
  const ItemsDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
        Row(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,   
              children: [
              Text(
                "\$${product.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            const SizedBox(height: 10),
            //buat rating
            Row(
              children: [
                Container(
                  width: 53,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kprimaryColor,
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 3
                      ),
                       Text(
                        product.rate.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                 ),
                const SizedBox(width: 5),
                Text(
                  product.review,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],)
            ],),
          ],
        )
      ],
    );
  }
}